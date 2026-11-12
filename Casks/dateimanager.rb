cask "dateimanager" do
  version "0.15.2"
  sha256 "7cfc2209d9a592fee8e6dbe048942a9e861d43ac613506930e70846a5e0b31a6"

  url "https://github.com/Stecki/homebrew-tools/releases/download/dateimanager-v#{version}/Dateimanager.dmg"
  name "Dateimanager"
  desc "Komfortabler Datei-Browser und Finder-Alternative"
  homepage "https://github.com/Stecki/Dateimanager"

  depends_on :macos

  app "Dateimanager.app"

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
        args:         ["-dr", "com.apple.quarantine", "{{appdir}}/Dateimanager.app"],
        must_succeed: false
  end
end
