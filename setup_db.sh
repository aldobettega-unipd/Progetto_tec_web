#!/bin/bash

# --- Configurazione Database ---
DB_USER="msanguin"
DB_NAME="msanguin"
# Se hai una password, puoi inserirla qui (attenzione alla sicurezza!)
# Oppure lo script la chiederà a ogni esecuzione.
DB_PASS="thooYeefu6aiveih" 

DB_DIR="./db"

echo "🗄️ Inizio importazione database..."

# Controlla se la cartella db esiste
if [ ! -d "$DB_DIR" ]; then
    echo "⚠️ Errore: Cartella $DB_DIR non trovata."
    exit 1
fi

# Ciclo per eseguire tutti i file .sql nella cartella
for sql_file in "$DB_DIR"/*.sql; do
    # Verifica se esistono effettivamente file .sql per evitare errori nel ciclo
    [ -e "$sql_file" ] || continue

    echo "📄 Importazione di: $(basename "$sql_file")..."
    
    if [ -z "$DB_PASS" ]; then
        # Se la password non è definita nello script, la chiede all'utente
        mysql -u "$DB_USER" -p "$DB_NAME" < "$sql_file"
    else
        # Se la password è definita, la usa direttamente (non apparirà nel terminale)
        mysql -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$sql_file"
    fi

    if [ $? -eq 0 ]; then
        echo "✅ $(basename "$sql_file") importato con successo."
    else
        echo "❌ Errore durante l'importazione di $sql_file."
    fi
done

echo "🏁 Operazione database conclusa."