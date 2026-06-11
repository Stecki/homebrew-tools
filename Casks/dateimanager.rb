cask "dateimanager" do
  version "0.1.6"
  sha256 "92e21eacf9d3f2f41e8777a6fed86015a0c928919336976c7df7bf9d83c7351f"

  url "https://github.com/Stecki/homebrew-tools/releases/download/dateimanager-v#{version}/Dateimanager.dmg"
  name "Dateimanager"
  desc "Komfortabler Datei-Browser und Finder-Alternative"
  homepage "https://github.com/Stecki/Dateimanager"

  depends_on :macos

  app "Dateimanager.app"
end
