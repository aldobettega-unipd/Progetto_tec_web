#!/bin/bash

# --- Configurazione Percorsi ---
# Assumiamo che lo script si trovi nella stessa directory che contiene /progetto
BASE_DIR=$(pwd)
SOURCE_DIR="$BASE_DIR/Progetto_tec_web"
TARGET_PUBLIC="$BASE_DIR/public_html"

echo "🚀 Inizio procedura di deploy..."

# 1. Sposta tutto il contenuto di /progetto nella cartella corrente
if [ -d "$SOURCE_DIR" ]; then
    echo "📦 Estrazione file da $SOURCE_DIR..."
    mv "$SOURCE_DIR"/* "$BASE_DIR/"
    # Rimuove la cartella progetto ormai vuota (o quasi, se ci sono file nascosti)
    rmdir "$SOURCE_DIR"
else
    echo "⚠️ Errore: Cartella $SOURCE_DIR non trovata."
    exit 1
fi

# 2. Pulisce la cartella public_html
if [ -d "$TARGET_PUBLIC" ]; then
    echo "🧹 Pulizia di $TARGET_PUBLIC in corso..."
    rm -rf "${TARGET_PUBLIC:?}"/*
else
    echo "📁 Creo la cartella $TARGET_PUBLIC..."
    mkdir -p "$TARGET_PUBLIC"
fi

# 3. Sposta i file da ./public a ./public_html
if [ -d "$BASE_DIR/public" ]; then
    echo "🌐 Spostamento file in public_html..."
    mv "$BASE_DIR/public"/* "$TARGET_PUBLIC/"
    
    # 4. Elimina la cartella public ora vuota
    rmdir "$BASE_DIR/public"
    echo "✅ Deploy completato con successo!"
else
    echo "⚠️ Attenzione: Cartella ./public non trovata. Nulla da spostare in public_html."
fi