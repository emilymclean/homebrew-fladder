cask "fladder" do
  version "0.12.1"
  sha256 "468f095d5e12c0950766f478df789207cade4ab62db3f005b2bcd448a7920f8e"

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

  depends_on macos: :monterey

  app "Fladder.app"

  zap trash: "~/Library/Containers/Fladder"
end
