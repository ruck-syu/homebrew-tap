# Homebrew tap for Voxi

Install Voxi with Homebrew:

```sh
brew install --cask ruck-syu/tap/voxi
```

Voxi is a macOS app distributed as a universal DMG. Its minimum supported macOS version is Monterey (12).

## First launch

Voxi is not yet notarized by Apple. macOS may block its first launch; follow the **Open Anyway** steps in the [Voxi install guide](https://github.com/ruck-syu/Voxi#install). Homebrew installs the app but cannot remove Gatekeeper's first-launch approval.

## Maintaining this tap

The cask pins a release version and SHA-256 checksum. A daily GitHub Actions workflow checks for new Voxi releases and updates the cask. You can also run it from the Actions tab or use:

```sh
python3 scripts/update-cask.py
```

Then commit and push the updated `Casks/voxi.rb`.
