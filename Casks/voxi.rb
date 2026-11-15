cask "voxi" do
  version "0.1.14"
  sha256 "4a59ae616f495384059213e1761759ec12ce8afe334e5a23fb37f6259c89c5b2"

  url "https://github.com/ruck-syu/Voxi/releases/download/v#{version}/Voxi_#{version}_universal.dmg"
  name "Voxi"
  desc "Organize your Mac's files by saying what you want"
  homepage "https://github.com/ruck-syu/Voxi"

  depends_on macos: ">= :monterey"

  app "Voxi.app"
end
