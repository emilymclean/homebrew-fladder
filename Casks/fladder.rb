cask "fladder" do
  version "0.11.0"
  sha256 "7e5ef72dd028d04d6a73213640242ccc06ecb5c32358bae9eafd4b60afa73c29"

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
