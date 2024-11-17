cask "fladder" do
  version "0.4.4"
  sha256 "90ce729628ab2f32b6c3d5c23cedfe9ff81470e5167a787f5ec24a34b41eb389"

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
