cask "voxi" do
  version "0.0.1"
  sha256 "6546bab8d2bea7086813451823f43146757f6268431e465197ff7ed6a9dbccd1"

  url "https://github.com/ruck-syu/Voxi/releases/download/v#{version}/Voxi_#{version}_universal.dmg"
  name "Voxi"
  desc "Organize your Mac's files by saying what you want"
  homepage "https://github.com/ruck-syu/Voxi"

  depends_on macos: ">= :monterey"

  app "Voxi.app"
end
