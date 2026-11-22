cask "voxi" do
  version "0.2.3"
  sha256 "257433fce46e6286205e1a8e34b175c493bb716b3a9bd83e1dd5ef3d729d1867"

  url "https://github.com/ruck-syu/Voxi/releases/download/v#{version}/Voxi_#{version}_universal.dmg"
  name "Voxi"
  desc "Organize your Mac's files by saying what you want"
  homepage "https://github.com/ruck-syu/Voxi"

  depends_on macos: ">= :monterey"

  app "Voxi.app"
end
