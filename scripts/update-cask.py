#!/usr/bin/env python3
"""Update the Voxi cask to the latest public GitHub release."""

import hashlib
import json
import re
import urllib.request
from pathlib import Path

API_URL = "https://api.github.com/repos/ruck-syu/Voxi/releases/latest"
USER_AGENT = "ruck-syu-homebrew-tap"


def fetch(url: str) -> bytes:
    request = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    with urllib.request.urlopen(request, timeout=60) as response:
        return response.read()


release = json.loads(fetch(API_URL))
tag = release["tag_name"]
version = tag.removeprefix("v")
asset_name = f"Voxi_{version}_universal.dmg"
asset = next(
    (item for item in release["assets"] if item["name"] == asset_name),
    None,
)
if asset is None:
    raise SystemExit(f"Release {tag} has no {asset_name} asset")

checksum = hashlib.sha256(fetch(asset["browser_download_url"])).hexdigest()
cask_path = Path(__file__).resolve().parents[1] / "Casks" / "voxi.rb"
content = cask_path.read_text()
content, version_count = re.subn(
    r'(?m)^  version "[^"]+"$',
    f'  version "{version}"',
    content,
)
content, checksum_count = re.subn(
    r'(?m)^  sha256 "[^"]+"$',
    f'  sha256 "{checksum}"',
    content,
)
if version_count != 1 or checksum_count != 1:
    raise SystemExit(f"Could not update version/checksum in {cask_path}")

cask_path.write_text(content)
print(f"Updated Voxi cask to {version} (sha256 {checksum})")
