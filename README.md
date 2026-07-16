Telemetrie-Dienste (AllowTelemetry = 0): Das ist der wichtigste Teil. Windows sammelt standardmäßig sehr viele Informationen darüber, wie du deinen PC benutzt, welche Hardware du hast und welche Software läuft. Das Skript setzt diesen Wert auf 0, um diese „Nachhause-Telefoniererei“ zu unterbinden.

Werbe-ID (AdvertisingInfo = 0): Jedes Windows-System bekommt eine eindeutige Werbe-ID. Diese wird genutzt, um ein Profil über dich zu erstellen und dir personalisierte Werbung anzuzeigen. Das Skript schaltet diese ID ab, damit du für das System „anonymer“ wirst.

Cortana (AllowCortana = 0): Cortana ist Microsofts Sprachassistentin, die tief in die Suche integriert ist. Da viele Nutzer sie nicht verwenden, aber sie im Hintergrund Ressourcen verbraucht und Daten verarbeitet, deaktiviert das Skript sie komplett. Das spart Systemleistung.

Aktivitätsverlauf (PublishUserActivities = 0): Windows protokolliert oft, welche Dokumente du geöffnet oder welche Webseiten du besucht hast, um „die Arbeit fortzusetzen“. Das Skript schaltet diese Überwachung ab, damit dein Nutzungsverlauf nicht in der Cloud oder lokal gespeichert wird.

Feedback-Anfragen (DoNotShowFeedbackNotifications = 1): Das Skript blockiert die nervigen „Wie finden Sie Windows?“-Popups, die oft aus dem Nichts erscheinen und ebenfalls Daten an Microsoft zurücksenden.




Technischer Hinweis:
Das Skript arbeitet direkt mit Registry-Schlüsseln (HKLM für das ganze System, HKCU für deinen Benutzer). Das sind die zentralen Datenbanken von Windows, in denen fast alle Einstellungen gespeichert sind. Da du das Skript als Administrator ausführst, hat es die Berechtigung, diese Werte zu ändern, die über das normale Einstellungs-Menü oft gar nicht oder nur teilweise erreichbar sind.

Hast du das Gefühl, dass das für deine Nutzer (die deine Datei später herunterladen) verständlich ist, oder sollen wir diese Erklärungen vielleicht kurz in die README.md-Datei deines Repositories schreiben? Das würde das Vertrauen in deinen Code extrem stärken!
