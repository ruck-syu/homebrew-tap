cask "voxi" do
  version "0.1.9"
  sha256 "d79949ae642e0fc11607d4af9c131136f9871e91d4fea8e277500a37478ec54e"

  url "https://github.com/ruck-syu/Voxi/releases/download/v#{version}/Voxi_#{version}_universal.dmg"
  name "Voxi"
  desc "Organize your Mac's files by saying what you want"
  homepage "https://github.com/ruck-syu/Voxi"

  depends_on macos: ">= :monterey"

  app "Voxi.app"
end
