cask "eml-viewer" do
  version "0.6.0"
  sha256 "496ef3c6d2b634ea20bc98f0c2152b6bb84f735470d46b8fe2ede0f4da69a3c0"

  url "https://github.com/Stecki/homebrew-tools/releases/download/eml-viewer-v#{version}/EML-Viewer.dmg"
  name "EML-Viewer"
  desc "Betrachter für E-Mail-Dateien (.eml)"
  homepage "https://github.com/Stecki/eml-viewer"

  depends_on :macos

  app "EML-Viewer.app"

  # Quarantäne nach der Installation explizit entfernen. Der brew-Download heftet
  # com.apple.quarantine an DMG und extrahierte App. Solange dieses xattr auf dem
  # Bundle liegt, löst macOS beim Kaltstart sporadisch einen Online-Gatekeeper-
  # Check aus ("kann nicht auf Schadsoftware prüfen") – selbst bei gültigem,
  # gestapeltem Notarisierungs-Ticket. Ohne das xattr entfällt der Online-Check
  # komplett. Greift bei jedem install UND upgrade.
  #
  # postflight_steps statt des seit Homebrew 7 veralteten postflight-Blocks. Die
  # Schritte laufen in Homebrews Sandbox; das Entfernen des Attributs im
  # App-Verzeichnis ist dort erlaubt (2026-09-15 mit einem Test-Cask nachgemessen).
  # {{appdir}} statt #{appdir}: wird erst bei der Installation eingesetzt.
  # must_succeed: false, damit ein scheiterndes xattr (etwa fehlende Rechte auf
  # einzelne Dateien) kein Upgrade abbricht. Ein fehlendes Attribut ist dagegen
  # kein Fehler: "xattr -dr" endet dann mit Status 0.
  #
  # Zweiter Schritt: Die Quick-Look-Vorschau von Mail.app abschalten. Sie beansprucht denselben
  # Dateityp (com.apple.mail.email), und Quick Look nimmt sonst sie statt der des EML-Viewers.
  # Die App selbst kann das nicht: Aus der Sandbox lehnt pkd schon das Lesen ab (2026-11-11
  # erprobt). Rückgängig: pluginkit -e use -i com.apple.mail.MailQuickLookExtension.
  # Kein Gegenstück beim Deinstallieren: uninstall_postflight_steps laufen auch bei jedem
  # Upgrade und würden die Mail-Vorschau dabei kurz wieder einschalten.
  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-dr", "com.apple.quarantine", "{{appdir}}/EML-Viewer.app"],
        must_succeed: false
    run "/usr/bin/pluginkit",
        args:         ["-e", "ignore", "-i", "com.apple.mail.MailQuickLookExtension"],
        must_succeed: false
  end
end
