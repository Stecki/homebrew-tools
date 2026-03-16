cask "kompolsuche" do
  version "1.35"
  sha256 "2d56cf1fcb2e5c3b17d253f2e2f4b7ee6057ead8547f00156b59ccafef6384ee"

  url "https://github.com/Stecki/homebrew-tools/releases/download/kompolsuche-v#{version}/KomPolSuche.dmg"
  name "KomPolSuche"
  desc "Volltextsuche in kommunalpolitischen PDF-Dokumenten"
  homepage "https://github.com/Stecki/KomPolSuche"

  app "KomPolSuche.app"
end
