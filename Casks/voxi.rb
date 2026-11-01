cask "voxi" do
  version "0.1.8"
  sha256 "bb53f167e6adfac111c82eebc65270a15814171415a75cccdc0ba14ed82a5781"

  url "https://github.com/ruck-syu/Voxi/releases/download/v#{version}/Voxi_#{version}_universal.dmg"
  name "Voxi"
  desc "Organize your Mac's files by saying what you want"
  homepage "https://github.com/ruck-syu/Voxi"

  depends_on macos: ">= :monterey"

  app "Voxi.app"
end
