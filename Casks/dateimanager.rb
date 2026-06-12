cask "dateimanager" do
  version "0.1.7"
  sha256 "0c07303eebcdbe265cc2bf1fd5b895e0396c25f83e40866e837927cb4cd17691"

  url "https://github.com/Stecki/homebrew-tools/releases/download/dateimanager-v#{version}/Dateimanager.dmg"
  name "Dateimanager"
  desc "Komfortabler Datei-Browser und Finder-Alternative"
  homepage "https://github.com/Stecki/Dateimanager"

  depends_on :macos

  app "Dateimanager.app"
end
