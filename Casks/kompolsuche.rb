cask "kompolsuche" do
  version "1.39"
  sha256 "b5a9aab67313fb70d25ccfb3fbae10c696139f26b673cc3af97386fd8ba948dc"

  url "https://github.com/Stecki/homebrew-tools/releases/download/kompolsuche-v#{version}/KomPolSuche.dmg"
  name "KomPolSuche"
  desc "Volltextsuche in kommunalpolitischen PDF-Dokumenten"
  homepage "https://github.com/Stecki/KomPolSuche"

  app "KomPolSuche.app"
end
