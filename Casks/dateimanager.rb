cask "dateimanager" do
  version "0.7.2"
  sha256 "2b3c4f324de99e7fd5df8f935b465e3263e462ddfa6c2e1309073fd2f10c20c2"

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
  # komplett. Greift bei jedem install UND upgrade. must_succeed:false, weil
  # xattr ohne vorhandenes Attribut einen Fehler liefert.
  postflight do
    system_command "/usr/bin/xattr",
                   args:         ["-dr", "com.apple.quarantine", "#{appdir}/Dateimanager.app"],
                   must_succeed: false
  end
end
