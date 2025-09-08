#!/bin/bash

# Fehlerbehandlung aktivieren, aber nicht abbrechen
set +e

# Zielverzeichnis festlegen
TARGET_DIR="links"

# Überprüfen, ob das Zielverzeichnis existiert, und ggf. erstellen
if [ ! -d "$TARGET_DIR" ]; then
    mkdir "$TARGET_DIR"
fi

# Schleife über alle Dateien im aktuellen Verzeichnis
for file in *; do
    # Überprüfen, ob es sich um eine Datei handelt
    if [ -f "$file" ]; then
        ln -s "$(pwd)/$file" "$TARGET_DIR/$file"
        if [ $? -ne 0 ]; then
            echo "Fehler beim Erstellen des Links für $file"
        fi
    fi
done

echo "Links zu allen Dateien wurden im Verzeichnis '$TARGET_DIR' 
erstellt."
