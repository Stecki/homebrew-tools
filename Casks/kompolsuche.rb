cask "kompolsuche" do
  version "1.33"
  sha256 "05446f5b22d689eebfd42fb6451d732dede06c99a92e660523b21718f5a783d3"

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
