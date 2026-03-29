cask "fladder" do
  version "0.10.2"
  sha256 "915032e3751e08261c446b1e142f33c33f5459ce6b6b3354669e965c56ee9d90"

  url "https://github.com/DonutWare/Fladder/releases/download/v#{version}/Fladder-macOS-#{version}.dmg"
  name "fladder"
  desc "Simple Jellyfin Frontend built on top of Flutter"
  homepage "https://github.com/DonutWare/Fladder"

  deprecate! date: "2026-03-29", because: "an official tap has become available at DonutWare/fladder, this tap will be disabled on 2026-08-29", replacement: "DonutWare/fladder/fladder"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Fladder.app"

  zap trash: "~/Library/Containers/Fladder"
end
