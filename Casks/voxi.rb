cask "voxi" do
  version "0.2.1"
  sha256 "88cc9aaf0bac5a8e62e90624cb30937d4887c1c41e9410ee6289fae084f9b512"

  url "https://github.com/ruck-syu/Voxi/releases/download/v#{version}/Voxi_#{version}_universal.dmg"
  name "Voxi"
  desc "Organize your Mac's files by saying what you want"
  homepage "https://github.com/ruck-syu/Voxi"

  depends_on macos: ">= :monterey"

  app "Voxi.app"
end
