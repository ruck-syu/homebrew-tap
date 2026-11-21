cask "voxi" do
  version "0.2.2"
  sha256 "c5f4aa81ab29bdf16575b70e260d6fd3420808389e4a66c3d47bb904fab6d953"

  url "https://github.com/ruck-syu/Voxi/releases/download/v#{version}/Voxi_#{version}_universal.dmg"
  name "Voxi"
  desc "Organize your Mac's files by saying what you want"
  homepage "https://github.com/ruck-syu/Voxi"

  depends_on macos: ">= :monterey"

  app "Voxi.app"
end
