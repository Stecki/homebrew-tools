cask "dateimanager" do
  version "0.1.5"
  sha256 "0271796072490d2310994d91acc18ff1db98a84b530561e54d4b1a4855ee6fe0"

  url "https://github.com/Stecki/homebrew-tools/releases/download/dateimanager-v#{version}/Dateimanager.dmg"
  name "Dateimanager"
  desc "Komfortabler Datei-Browser und Finder-Alternative"
  homepage "https://github.com/Stecki/Dateimanager"

  depends_on :macos

  app "Dateimanager.app"
end
