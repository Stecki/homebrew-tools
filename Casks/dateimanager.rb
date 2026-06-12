cask "dateimanager" do
  version "0.1.8"
  sha256 "a206321b150ef9e83612f75969fee582935913ea3af54ef8d1ad53ca4de3152b"

  url "https://github.com/Stecki/homebrew-tools/releases/download/dateimanager-v#{version}/Dateimanager.dmg"
  name "Dateimanager"
  desc "Komfortabler Datei-Browser und Finder-Alternative"
  homepage "https://github.com/Stecki/Dateimanager"

  depends_on :macos

  app "Dateimanager.app"
end
