cask "voxi" do
  version "0.1.13"
  sha256 "236be5ec882b5f8c2c4af07e5c7852c35a1170688f032b4e5c8e9f236a8f7e4d"

  url "https://github.com/ruck-syu/Voxi/releases/download/v#{version}/Voxi_#{version}_universal.dmg"
  name "Voxi"
  desc "Organize your Mac's files by saying what you want"
  homepage "https://github.com/ruck-syu/Voxi"

  depends_on macos: ">= :monterey"

  app "Voxi.app"
end
