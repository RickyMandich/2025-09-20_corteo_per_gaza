# Sistema di Gallerie Fotografiche Automatico

Un sistema completamente automatico per visualizzare gallerie fotografiche. Basta aggiungere foto e creare `list.txt` - tutto il resto è automatico!

## 🚀 Caratteristiche

- **🔄 Rilevamento automatico**: Trova automaticamente tutte le cartelle con foto
- **📁 Zero configurazione**: Nessun file da modificare manualmente
- **🖼️ Nome file visibile**: Mostra il nome di ogni foto
- **⬇️ Download integrato**: Pulsante per scaricare ogni foto
- **📱 Touch ottimizzato**: Zoom e swipe perfetti su mobile
- **🎨 Design moderno**: Interfaccia dark mode responsive
- **⚡ Deploy automatico**: Perfetto per GitHub Pages

## 📁 Struttura File

```
/
├── index.html              # Index principale (rilevamento automatico)
├── gallery.html            # Galleria modulare con nome file e download
├── test-local.md           # Guida per test in locale
├── README.md              # Questo file
└── [cartella-foto]/
    ├── foto1.JPG
    ├── foto2.JPG
    ├── ...
    ├── list.txt           # Creato con: ls *.JPG > list.txt
    └── index.html         # Reindirizza alla galleria (opzionale)
```

## 🛠️ Come Usare

### 1. Aggiungere una Nuova Galleria (Semplicissimo!)

1. **Crea una cartella** con le tue foto JPG
2. **Genera list.txt** con un comando:
   ```bash
   cd "nome-cartella-foto"
   ls *.JPG > list.txt
   ```
3. **Push su GitHub** - Fine! 🎉

**Il sistema rileva automaticamente** tutte le cartelle che hanno `list.txt` e le mostra nell'index principale. Nessuna configurazione manuale necessaria!

### 2. Visualizzare le Gallerie

1. **Apri il sito** - L'index mostra automaticamente tutte le gallerie
2. **Clicca su una galleria** per aprirla
3. **Naviga le foto** con:
   - **Frecce**: Avanti/indietro
   - **Swipe**: Su mobile (senza interferire con zoom)
   - **Griglia**: Panoramica di tutte le foto
   - **Nome file**: Visibile sotto ogni foto
   - **Download**: Pulsante per scaricare la foto corrente

### 3. Nuove Funzionalità

- **🏷️ Nome file**: Ogni foto mostra il suo nome
- **⬇️ Download**: Pulsante per scaricare la foto corrente
- **🔍 Zoom intelligente**: Su mobile, zoom senza cambiare foto
- **📱 Touch perfetto**: Swipe fluido e preciso

## 🚀 Deployment su GitHub

### Workflow Consigliato

1. **Clona/Fork** questo repository
2. **Aggiungi le tue foto** in cartelle separate
3. **Genera list.txt** per ogni cartella:
   ```bash
   cd "cartella-foto"
   ls *.JPG > list.txt
   ```
4. **Push su GitHub** - Il deploy e rilevamento sono automatici!

### Vantaggi del Sistema Automatico

- ✅ **Zero configurazione** - Nessun file da modificare
- ✅ **Rilevamento automatico** - Trova tutte le cartelle con foto
- ✅ **Deploy istantaneo** - Push e il sito si aggiorna
- ✅ **Hosting gratuito** con GitHub Pages
- ✅ **Backup automatico** su cloud
- ✅ **Condivisione facile** tramite URL

## 🔧 Configurazione

### File list.txt

Il file `list.txt` deve contenere un nome di file per riga:

```
IMGP5215.JPG
IMGP5216.JPG
IMGP5217.JPG
...
```

### Estensioni Supportate

- `.jpg`, `.JPG`
- `.jpeg`, `.JPEG`
- `.png`, `.PNG`
- `.gif`, `.GIF`
- `.webp`, `.WEBP`

## 📱 Funzionalità Mobile

### Gestione Touch Migliorata

- **Swipe orizzontale**: Cambia foto
- **Pinch-to-zoom**: Zoom senza cambiare foto
- **Prevenzione scroll accidentale**: Durante lo zoom, lo swipe è disabilitato

### Responsive Design

- Layout ottimizzato per schermi piccoli
- Controlli touch-friendly
- Dimensioni foto adattive

## 🎨 Personalizzazione

### Colori e Stili

Il sistema usa Bootstrap 5.3 con un tema dark personalizzato. Per modificare i colori:

1. Modifica le variabili CSS in `gallery.html` e `index.html`
2. I colori principali sono:
   - Primario: `#4fc3f7` (azzurro)
   - Sfondo: Gradiente scuro
   - Accenti: Bianco trasparente

### Autoplay

- Intervallo predefinito: 15 secondi
- Si ferma durante hover/touch
- Disabilitato durante zoom

## 🧪 Test Locale

Prima del deploy su GitHub, puoi testare tutto in locale:

1. **Avvia un server HTTP locale**:
   ```bash
   python -m http.server 8000
   ```

2. **Apri il browser** su `http://localhost:8000`

3. **Testa tutte le funzionalità** prima del push

📖 **Guida completa**: Vedi [test-local.md](test-local.md) per istruzioni dettagliate

## 🔍 Risoluzione Problemi

### Le foto non si caricano

1. Verifica che il file `list.txt` esista nella cartella
2. Controlla che i nomi dei file in `list.txt` corrispondano ai file reali
3. Assicurati che le estensioni siano supportate

### La cartella non appare nell'index

1. Verifica che esista il file `list.txt` nella cartella
2. Controlla che il file contenga almeno un'immagine valida
3. **Aspetta qualche secondo** - Il rilevamento è automatico ma può richiedere tempo

### Problemi di zoom su mobile

- Il sistema distingue automaticamente tra zoom e swipe
- Durante il zoom, il cambio foto è disabilitato
- Dopo il zoom, aspetta 1 secondo prima di riattivare l'autoplay

## 🚀 Miglioramenti Implementati

### Rispetto alla Versione Precedente

1. **🔄 Rilevamento automatico**: Zero configurazione manuale
2. **🏷️ Nome file visibile**: Ogni foto mostra il suo nome
3. **⬇️ Download integrato**: Pulsante per scaricare ogni foto
4. **📱 Touch perfetto**: Zoom senza cambiare foto accidentalmente
5. **🖼️ Foto verticali**: Visualizzazione completa senza ritaglio
6. **⚡ Performance**: Caricamento lazy e transizioni fluide

## 🎯 Workflow Finale

Il sistema è ora **completamente automatico**! 🎉

**Per aggiungere una nuova galleria:**
```bash
# 1. Crea cartella con foto JPG
mkdir "2025-09-22 nuovo evento filtrato"
# Aggiungi le foto...

# 2. Genera list.txt
cd "2025-09-22 nuovo evento filtrato"
ls *.JPG > list.txt

# 3. Push - tutto il resto è automatico!
git add .
git commit -m "Nuova galleria"
git push
```

**Il sistema rileva automaticamente la nuova cartella e la mostra nell'index!** 🚀📸

## 📄 Licenza

Questo progetto è open source e può essere utilizzato liberamente.

## 🤝 Contributi

Per miglioramenti o bug report, modifica direttamente i file secondo le tue esigenze.
