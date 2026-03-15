cask "kompolsuche" do
  version "1.25"
  sha256 "92a8974f7e9e8d167bbac1a9fc96231c4a2f32031c8d1c2323068d51e466eb5a"

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
