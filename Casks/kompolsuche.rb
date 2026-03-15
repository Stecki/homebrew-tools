cask "kompolsuche" do
  version "1.23"
  sha256 "cb616ee0c68a81e0a20a56f9e00ea646f8afc49b34cbcc852f68496a8ed091c3"

  url "https://github.com/Stecki/homebrew-tools/releases/download/kompolsuche-v#{version}/KomPolSuche.dmg"
  name "KomPolSuche"
  desc "Volltextsuche in kommunalpolitischen PDF-Dokumenten"
  homepage "https://github.com/Stecki/KomPolSuche"

  app "KomPolSuche.app"

  caveats <<~EOS
    KomPolSuche ist nicht signiert/notarisiert.
    Nach der Installation Quarantine-Attribut entfernen:
      xattr -cr /Applications/KomPolSuche.app
  EOS
end
