cask "kompolsuche" do
  version "1.38"
  sha256 "1339cbd98470298c618f66b77411f53ef3394ccd9d6269f459424a948f8d29cd"

  url "https://github.com/Stecki/homebrew-tools/releases/download/kompolsuche-v#{version}/KomPolSuche.dmg"
  name "KomPolSuche"
  desc "Volltextsuche in kommunalpolitischen PDF-Dokumenten"
  homepage "https://github.com/Stecki/KomPolSuche"

  app "KomPolSuche.app"
end
