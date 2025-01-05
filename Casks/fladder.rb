cask "fladder" do
  version "0.5.2"
  sha256 "ac1bd5e4a12bc3602228a20aa6dba4c383e63aafced528ee79e299a84eb19fde"

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
