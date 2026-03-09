cask "kompolsuche" do
  version "1.16"
  sha256 "PLACEHOLDER"

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
