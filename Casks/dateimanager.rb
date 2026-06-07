cask "dateimanager" do
  version "0.1.3"
  sha256 "0c761d2058ed7784515c7e5abde443defe6055cb1ef58ff6da69dfecba1aeaab"

  url "https://github.com/Stecki/homebrew-tools/releases/download/dateimanager-v#{version}/Dateimanager.dmg"
  name "Dateimanager"
  desc "Komfortabler Datei-Browser und Finder-Alternative"
  homepage "https://github.com/Stecki/Dateimanager"

  depends_on :macos

  app "Dateimanager.app"
end
