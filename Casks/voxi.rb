cask "voxi" do
  version "0.1.0"
  sha256 "e715cfaa840c196d6ec215361406902b740a365830e125b5e1074ab39948289b"

  url "https://github.com/ruck-syu/Voxi/releases/download/v#{version}/Voxi_#{version}_universal.dmg"
  name "Voxi"
  desc "Organize your Mac's files by saying what you want"
  homepage "https://github.com/ruck-syu/Voxi"

  depends_on macos: ">= :monterey"

  app "Voxi.app"
end
