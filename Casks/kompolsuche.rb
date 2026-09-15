cask "kompolsuche" do
  version "1.44"
  sha256 "4a24eb403265761af45d8067d4990153d0850bf482e922fd8087addcaab8c9c0"

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
