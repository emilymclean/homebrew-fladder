cask "fladder" do
  version "0.6.0"
  sha256 "5a14986a7c7c21a113c200c22740ace53af62263bb0183dc5760bf85836a881b"

  url "https://github.com/DonutWare/Fladder/releases/download/v#{version}/Fladder-macOS-#{version}.dmg"
  name "fladder"
  desc "Simple Jellyfin Frontend built on top of Flutter"
  homepage "https://github.com/DonutWare/Fladder"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Fladder.app"

  zap trash: "~/Library/Containers/Fladder"
end
