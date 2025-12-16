cask "fladder" do
  version "0.8.1"
  sha256 "21ac799758f0bdbccdbf184bfb1182bb3e52113ec22839ac0373c0011118d551"

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
