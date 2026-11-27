cask "voxi" do
  version "0.0.3"
  sha256 "d5219f2be65966995338a958df960c899199778b0aace608e1d84107276bf7df"

  url "https://github.com/ruck-syu/Voxi/releases/download/v#{version}/Voxi_#{version}_universal.dmg"
  name "Voxi"
  desc "Organize your Mac's files by saying what you want"
  homepage "https://github.com/ruck-syu/Voxi"

  depends_on macos: ">= :monterey"

  app "Voxi.app"
end
