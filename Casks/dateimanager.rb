cask "dateimanager" do
  version "0.1.1"
  sha256 "1de434d2b31e06283afaeef57c8260a2bb320110d8983a00abc229bff530e98f"

  url "https://github.com/Stecki/homebrew-tools/releases/download/dateimanager-v#{version}/Dateimanager.dmg"
  name "Dateimanager"
  desc "Datei-Manager / Finder-Ersatz für macOS"
  homepage "https://github.com/Stecki/Dateimanager"

  app "Dateimanager.app"
end
