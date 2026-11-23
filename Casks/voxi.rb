cask "voxi" do
  version "0.2.4"
  sha256 "7c04f96ef1d62f331e62bf8d4bd570d932f54e2cbd1f09d99d2e94417a990bf0"

  url "https://github.com/ruck-syu/Voxi/releases/download/v#{version}/Voxi_#{version}_universal.dmg"
  name "Voxi"
  desc "Organize your Mac's files by saying what you want"
  homepage "https://github.com/ruck-syu/Voxi"

  depends_on macos: ">= :monterey"

  app "Voxi.app"
end
