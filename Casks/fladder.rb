cask "fladder" do
  version "0.8.0"
  sha256 "fe9feaa86bcc9a050dc1b9205082ad7f9237d1d754d7352b59969c8e2db19f1e"

  url "https://github.com/DonutWare/Fladder/releases/download/v#{version}/Fladder-macOS-#{version}.dmg"
  name "fladder"
  desc "Simple Jellyfin Frontend built on top of Flutter"
  homepage "https://github.com/DonutWare/Fladder"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Fladder.app"

  zap trash: "~/Library/Containers/Fladder"
end
