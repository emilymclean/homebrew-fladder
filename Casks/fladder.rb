cask "fladder" do
  version "0.6.2"
  sha256 "6f3ee32bc24f1e7739f9258ab3f0f6562eaf34dff15aa252829dde21d4517b46"

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
