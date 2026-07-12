cask "kompolsuche" do
  version "1.43"
  sha256 "9c22f45a995c4a581c1669456ec4b06b1af41d0bce136463640b0ceba129d5c5"

  url "https://github.com/Stecki/homebrew-tools/releases/download/kompolsuche-v#{version}/KomPolSuche.dmg"
  name "KomPolSuche"
  desc "Volltextsuche in kommunalpolitischen PDF-Dokumenten"
  homepage "https://github.com/Stecki/KomPolSuche"

  app "KomPolSuche.app"

  # App ist Developer-ID-signiert und notarisiert. Homebrew heftet jeder
  # frisch installierten Version ein Quarantäne-Flag an, wodurch macOS bei
  # jedem Upgrade den Gatekeeper-Erststartdialog zeigt. Da die App vertraut
  # ist, entfernen wir das Flag direkt nach der Installation.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/KomPolSuche.app"]
  end
end
