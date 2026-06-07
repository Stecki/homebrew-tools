cask "dateimanager" do
  version "0.1.2"
  sha256 "4298275009e7ea7bbe1b5d938d02db8fe2c4eda535eef8b4c7cb39ce8d059201"

  url "https://github.com/Stecki/homebrew-tools/releases/download/dateimanager-v#{version}/Dateimanager.dmg"
  name "Dateimanager"
  desc "Komfortabler Datei-Browser und Finder-Alternative"
  homepage "https://github.com/Stecki/Dateimanager"

  depends_on :macos

  app "Dateimanager.app"
end
