cask "dateimanager" do
  version "0.1.4"
  sha256 "9264fe99b5439e34a807a7bfbb3575c50bb3888f19cefffabe132f0bfdd7100d"

  url "https://github.com/Stecki/homebrew-tools/releases/download/dateimanager-v#{version}/Dateimanager.dmg"
  name "Dateimanager"
  desc "Komfortabler Datei-Browser und Finder-Alternative"
  homepage "https://github.com/Stecki/Dateimanager"

  depends_on :macos

  app "Dateimanager.app"
end
