cask "kompolsuche" do
  version "1.46"
  sha256 "83ef26cc0ab2177280c1cf0d7e178ff9c105e34cced1488df489d8dd4aefb173"

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
