cask "fladder" do
  version "0.11.1"
  sha256 "db7f93e833a14afabb71032a0664c831c567128d5b60c6accc402775065efe51"

  url "https://github.com/DonutWare/Fladder/releases/download/v#{version}/Fladder-macOS-#{version}.dmg"
  name "fladder"
  desc "Simple Jellyfin Frontend built on top of Flutter"
  homepage "https://github.com/DonutWare/Fladder"

  livecheck do
    url :url
    strategy :github_latest
  end

  deprecate! date: "2026-03-29", because: "an official tap has become available at DonutWare/fladder",
             replacement_cask: "DonutWare/fladder/fladder"

  depends_on :macos

  app "Fladder.app"

  zap trash: "~/Library/Containers/Fladder"
end
