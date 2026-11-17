cask "kompolsuche" do
  version "1.47"
  sha256 "428d2f4927a31e7252e991ba889199dbb5d1a4c6afe148ee6eabc0e8d969c0e1"

  url "https://github.com/Stecki/homebrew-tools/releases/download/kompolsuche-v#{version}/KomPolSuche.dmg"
  name "KomPolSuche"
  desc "Volltextsuche in kommunalpolitischen PDF-Dokumenten"
  homepage "https://github.com/Stecki/KomPolSuche"

  depends_on :macos

  app "KomPolSuche.app"

  # App ist Developer-ID-signiert und notarisiert. Homebrew heftet jeder
  # frisch installierten Version ein Quarantäne-Flag an, wodurch macOS bei
  # jedem Upgrade den Gatekeeper-Erststartdialog zeigt. Da die App vertraut
  # ist, entfernen wir das Flag direkt nach der Installation.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/KomPolSuche.app"]
  end
end
