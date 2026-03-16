cask "kompolsuche" do
  version "1.36"
  sha256 "e377b2fa84dcebb88e9ab93a86dbe4f3c58d944ff127e17503d1a897bf4c6678"

  url "https://github.com/Stecki/homebrew-tools/releases/download/kompolsuche-v#{version}/KomPolSuche.dmg"
  name "KomPolSuche"
  desc "Volltextsuche in kommunalpolitischen PDF-Dokumenten"
  homepage "https://github.com/Stecki/KomPolSuche"

  app "KomPolSuche.app"
end
