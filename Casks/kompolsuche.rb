cask "kompolsuche" do
  version "1.16"
  sha256 "35096f972dfc9f7b60747f55fdeb730ccb30722664c5b906f2277d8f1c37d5ff"

  url "https://github.com/Stecki/KomPolSuche/releases/download/v#{version}/KomPolSuche.dmg"
  name "KomPolSuche"
  desc "Volltextsuche in kommunalpolitischen PDF-Dokumenten"
  homepage "https://github.com/Stecki/KomPolSuche"

  app "KomPolSuche.app"

  caveats <<~EOS
    KomPolSuche ist nicht signiert/notarisiert.
    Beim ersten Start: Rechtsklick → Öffnen → Öffnen bestätigen.
  EOS
end
