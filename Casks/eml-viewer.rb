cask "eml-viewer" do
  version "0.3.0"
  sha256 "6006e1fa65e5e733d9941a933bf544214c9250cc0ffa2223bfc3a5f2893bfefc"

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
  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-dr", "com.apple.quarantine", "{{appdir}}/EML-Viewer.app"],
        must_succeed: false
  end
end
