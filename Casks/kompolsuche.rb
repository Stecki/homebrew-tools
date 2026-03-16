cask "kompolsuche" do
  version "1.37"
  sha256 "6856f2c0086f73a73f243f844e618b66377d0d7d25492048da5d02e120b4ba75"

  url "https://github.com/Stecki/homebrew-tools/releases/download/kompolsuche-v#{version}/KomPolSuche.dmg"
  name "KomPolSuche"
  desc "Volltextsuche in kommunalpolitischen PDF-Dokumenten"
  homepage "https://github.com/Stecki/KomPolSuche"

  app "KomPolSuche.app"
end
