# Sistema di Gallerie Fotografiche Automatico

Un sistema completamente automatico per visualizzare gallerie fotografiche. Basta aggiungere foto e creare `list.txt` - tutto il resto è automatico!

## 🚀 Caratteristiche

- **📁 Configurazione semplice**: Lista cartelle in un solo punto
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

### 1. Aggiungere una Nuova Galleria

1. **Crea una cartella** con le tue foto JPG
2. **Genera photo.txt** con un comando:
   ```bash
   cd "nome-cartella-foto"
   ls *.JPG > photo.txt
   ```
3. **Aggiungi la cartella** alla lista in `index.html`:
   ```javascript
   const galleryFolders = [
       '2025-09-20 corteo per gaza (blocco della vempa) filtrato',
       'nome-nuova-cartella', // ← Aggiungi qui
   ];
   ```
4. **Push su GitHub** - Fine! 🎉

### 1.1. Automatizzare con scan.sh

Usa lo script `scan.sh` per automatizzare la generazione di `photo.txt` e `song.txt`:
```bash
chmod +x scan.sh
./scan.sh
```

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
- **🎵 Audio di sottofondo**: Riproduzione casuale di musica dalla lista `song.txt`

## 🚀 Deployment su GitHub

### Workflow Consigliato

1. **Clona/Fork** questo repository
2. **Aggiungi le tue foto** in cartelle separate
3. **Genera photo.txt** per ogni cartella:
   ```bash
   cd "cartella-foto"
   ls *.JPG > photo.txt
   ```
   Oppure usa lo script automatico:
   ```bash
   ./scan.sh
   ```
4. **Push su GitHub** - Il deploy e rilevamento sono automatici!

### Vantaggi del Sistema

- ✅ **Configurazione semplice** - Una sola lista da aggiornare
- ✅ **Performance ottimale** - Nessuna ricerca automatica lenta
- ✅ **Deploy istantaneo** - Push e il sito si aggiorna
- ✅ **Hosting gratuito** con GitHub Pages
- ✅ **Backup automatico** su cloud
- ✅ **Condivisione facile** tramite URL

## 🔧 Configurazione

### File photo.txt

Il file `photo.txt` deve contenere un nome di file per riga:

```
IMGP5215.JPG
IMGP5216.JPG
IMGP5217.JPG
...
```

### Script scan.sh

Lo script `scan.sh` automatizza la generazione di `photo.txt` e `song.txt`:

```bash
chmod +x scan.sh
./scan.sh
```

Funzionalità:
- 🔍 **Scansiona automaticamente** tutte le cartelle
- 📝 **Genera photo.txt** con tutte le immagini trovate
- 🎵 **Genera song.txt** con tutti i file audio trovati
- 🔄 **Rinomina list.txt** in photo.txt automaticamente
- 📊 **Mostra statistiche** complete

### Estensioni Supportate

#### Immagini
- `.jpg`, `.JPG`
- `.jpeg`, `.JPEG`
- `.png`, `.PNG`
- `.gif`, `.GIF`
- `.webp`, `.WEBP`

#### Audio (per song.txt)
- `.mp3`, `.MP3`
- `.wav`, `.WAV`
- `.ogg`, `.OGG`
- `.m4a`, `.M4A`
- `.aac`, `.AAC`

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

1. Verifica che il file `photo.txt` esista nella cartella
2. Controlla che i nomi dei file in `photo.txt` corrispondano ai file reali
3. Assicurati che le estensioni siano supportate

### La cartella non appare nell'index

1. Verifica che esista il file `photo.txt` nella cartella
2. Controlla che il file contenga almeno un'immagine valida
3. **Aspetta qualche secondo** - Il rilevamento è automatico

### L'audio non funziona

1. Verifica che esista il file `song.txt` nella cartella
2. Controlla che i nomi dei file audio in `song.txt` corrispondano ai file reali
3. Assicurati che le estensioni audio siano supportate
4. Su alcuni browser, l'audio richiede interazione utente (clicca play)

## 🎵 Funzionalità Audio

Per aggiungere musica di sottofondo alla tua gallery:

1. **Aggiungi file audio** nella cartella della gallery
2. **Crea `song.txt`** con l'elenco dei file audio (uno per riga)
3. **Apri la gallery** - la musica inizierà automaticamente!

Vedi [AUDIO_FEATURE.md](AUDIO_FEATURE.md) per dettagli completi.

## 🔍 Script di Automazione

### scan.sh - Generazione Automatica

Lo script `scan.sh` automatizza completamente la creazione di `photo.txt` e `song.txt`:

```bash
# Su Linux/Mac
./scan.sh

# Su Windows con Git Bash
"C:\Program Files\Git\bin\bash.exe" ./scan.sh
```

**Funzionalità:**
- 🔄 Rinomina automaticamente `list.txt` → `photo.txt`
- 📸 Scansiona tutte le immagini e genera `photo.txt`
- 🎵 Scansiona tutti i file audio e genera `song.txt`
- 📊 Mostra statistiche dettagliate

Vedi [SCAN_SCRIPT.md](SCAN_SCRIPT.md) per la documentazione completa.

## 🚀 Script di Deploy

### deploy.sh / deploy.ps1 - Deploy Automatico

Gli script di deploy automatizzano il processo di commit e push con versioning incrementale:

```bash
# Su Linux/Mac
./deploy.sh

# Su Windows PowerShell
.\deploy.ps1

# Su Windows con Git Bash
"C:\Program Files\Git\bin\bash.exe" ./deploy.sh
```

**Funzionalità:**
- 🔢 Versioning automatico incrementale (`rev 1`, `rev 2`, `rev 3`...)
- 🔍 Controlli intelligenti (repository Git, modifiche presenti)
- 📊 Output dettagliato con feedback colorato
- 🛡️ Gestione errori robusta

**Processo automatico:**
1. `git add .`
2. `git commit -m "rev X"` (X = versione precedente + 1)
3. `git push`
4. `git status`

Vedi [DEPLOY_SCRIPTS.md](DEPLOY_SCRIPTS.md) per la documentazione completa. ma può richiedere tempo

### Problemi di zoom su mobile

- Il sistema distingue automaticamente tra zoom e swipe
- Durante il zoom, il cambio foto è disabilitato
- Dopo il zoom, aspetta 1 secondo prima di riattivare l'autoplay

## 🚀 Miglioramenti Implementati

### Rispetto alla Versione Precedente

1. **📁 Configurazione semplice**: Una lista facile da aggiornare
2. **🏷️ Nome file visibile**: Ogni foto mostra il suo nome
3. **⬇️ Download integrato**: Pulsante per scaricare ogni foto
4. **📱 Touch perfetto**: Zoom senza cambiare foto accidentalmente
5. **🖼️ Foto verticali**: Visualizzazione completa senza ritaglio
6. **⚡ Performance**: Caricamento veloce e ottimizzato

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

# 3. Aggiungi alla lista in index.html
# Modifica la sezione galleryFolders

# 4. Push!
git add .
git commit -m "Nuova galleria"
git push
```

**Semplice, veloce e affidabile!** 🚀📸

## 📄 Licenza

Questo progetto è open source e può essere utilizzato liberamente.

## 🤝 Contributi

Per miglioramenti o bug report, modifica direttamente i file secondo le tue esigenze.
