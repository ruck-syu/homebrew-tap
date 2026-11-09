cask "voxi" do
  version "0.1.11"
  sha256 "4e1cd733ec8ec827db33bdc647466739379e072b6c00694824d2f08c78c5bf93"

  url "https://github.com/ruck-syu/Voxi/releases/download/v#{version}/Voxi_#{version}_universal.dmg"
  name "Voxi"
  desc "Organize your Mac's files by saying what you want"
  homepage "https://github.com/ruck-syu/Voxi"

  depends_on macos: ">= :monterey"

  app "Voxi.app"
end
