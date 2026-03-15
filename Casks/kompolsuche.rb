cask "kompolsuche" do
  version "1.30"
  sha256 "a10d829aaa9d2cc86407cefea4b358353c74c98d0370965e55462a9249dc0646"

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
