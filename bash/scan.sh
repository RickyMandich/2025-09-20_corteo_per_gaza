#!/bin/bash

# Script per scansionare automaticamente le cartelle e generare photo.txt e song.txt
# Autore: Gallery Photo System
# Data: $(date +%Y-%m-%d)

# Colori per output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Contatori
total_folders=0
processed_folders=0
total_photos=0
total_songs=0

echo -e "${BLUE}🔍 Gallery Scanner - Generazione automatica photo.txt e song.txt${NC}"
echo "=================================================================="

# Funzione per processare una singola cartella
process_folder() {
    local folder="$1"
    local photos_found=0
    local songs_found=0
    
    echo -e "\n${YELLOW}📁 Processando: ${folder}${NC}"
    
    # Entra nella cartella
    cd "$folder" || {
        echo -e "${RED}❌ Errore: impossibile accedere alla cartella ${folder}${NC}"
        return 1
    }
    
    # Rinomina list.txt in photo.txt se esiste
    if [[ -f "list.txt" ]]; then
        mv "list.txt" "photo.txt"
        echo -e "${GREEN}📝 Rinominato list.txt → photo.txt${NC}"
    fi
    
    # Genera photo.txt con tutte le immagini
    echo -e "${BLUE}🖼️  Scansione immagini...${NC}"
    
    # Estensioni immagini supportate
    photo_extensions=("jpg" "jpeg" "png" "gif" "webp" "JPG" "JPEG" "PNG" "GIF" "WEBP")
    
    # Crea photo.txt vuoto
    > photo.txt
    
    # Cerca file immagine per ogni estensione
    for ext in "${photo_extensions[@]}"; do
        shopt -s nullglob
        for file in *."$ext"; do
            if [[ -f "$file" ]]; then
                echo "$file" >> photo.txt
                ((photos_found++))
            fi
        done
        shopt -u nullglob
    done
    
    # Ordina photo.txt
    if [[ -s photo.txt ]]; then
        sort photo.txt -o photo.txt
        echo -e "${GREEN}✅ Trovate ${photos_found} immagini → photo.txt${NC}"
    else
        rm photo.txt
        echo -e "${YELLOW}⚠️  Nessuna immagine trovata${NC}"
    fi
    
    # Genera song.txt con tutti i file audio
    echo -e "${BLUE}🎵 Scansione file audio...${NC}"
    
    # Estensioni audio supportate
    audio_extensions=("mp3" "wav" "ogg" "m4a" "aac" "MP3" "WAV" "OGG" "M4A" "AAC")
    
    # Crea song.txt vuoto
    > song.txt
    
    # Cerca file audio per ogni estensione
    for ext in "${audio_extensions[@]}"; do
        shopt -s nullglob
        for file in *."$ext"; do
            if [[ -f "$file" ]]; then
                echo "$file" >> song.txt
                ((songs_found++))
            fi
        done
        shopt -u nullglob
    done
    
    # Ordina song.txt
    if [[ -s song.txt ]]; then
        sort song.txt -o song.txt
        echo -e "${GREEN}✅ Trovati ${songs_found} file audio → song.txt${NC}"
    else
        rm song.txt
        echo -e "${YELLOW}⚠️  Nessun file audio trovato${NC}"
    fi
    
    # Aggiorna contatori globali
    ((total_photos += photos_found))
    ((total_songs += songs_found))
    ((processed_folders++))
    
    # Torna alla directory principale
    cd ..
    
    echo -e "${GREEN}📊 Cartella completata: ${photos_found} foto, ${songs_found} audio${NC}"
}

# Funzione principale
main() {
    echo -e "${BLUE}🚀 Avvio scansione...${NC}"
    
    # Conta il numero totale di cartelle
    for dir in */; do
        if [[ -d "$dir" ]]; then
            ((total_folders++))
        fi
    done
    
    echo -e "${BLUE}📂 Trovate ${total_folders} cartelle da processare${NC}"
    
    # Processa ogni cartella
    for dir in */; do
        if [[ -d "$dir" ]]; then
            # Rimuove il trailing slash
            folder_name="${dir%/}"
            process_folder "$folder_name"
        fi
    done
    
    # Statistiche finali
    echo ""
    echo "=================================================================="
    echo -e "${GREEN}🎉 SCANSIONE COMPLETATA!${NC}"
    echo ""
    echo -e "${BLUE}📊 STATISTICHE:${NC}"
    echo -e "   📁 Cartelle processate: ${GREEN}${processed_folders}${NC}/${total_folders}"
    echo -e "   🖼️  Immagini totali: ${GREEN}${total_photos}${NC}"
    echo -e "   🎵 File audio totali: ${GREEN}${total_songs}${NC}"
    echo ""
    
    if [[ $processed_folders -eq $total_folders ]]; then
        echo -e "${GREEN}✅ Tutte le cartelle sono state processate con successo!${NC}"
    else
        echo -e "${YELLOW}⚠️  Alcune cartelle potrebbero aver avuto problemi${NC}"
    fi
    
    echo ""
    echo -e "${BLUE}💡 PROSSIMI PASSI:${NC}"
    echo "   1. Verifica i file photo.txt e song.txt generati"
    echo "   2. Aggiungi eventuali file mancanti manualmente"
    echo "   3. Testa la gallery nel browser"
    echo ""
}

# Verifica che lo script sia eseguito dalla directory corretta
if [[ ! -f "gallery.html" ]] && [[ ! -f "index.html" ]]; then
    echo -e "${RED}❌ Errore: Esegui questo script dalla directory principale del progetto${NC}"
    echo -e "${YELLOW}💡 La directory dovrebbe contenere gallery.html o index.html${NC}"
    exit 1
fi



# Esegui la funzione principale
main

echo -e "${BLUE}🏁 Script completato!${NC}"
