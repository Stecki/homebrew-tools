cask "kompolsuche" do
  version "1.20"
  sha256 "6474aa907fbd36e18fcdec3dc8b0a828e2500ed921385560d7810273df9f84a8"

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
