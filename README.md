# 📸 Gallery Photo System

Sistema di gallerie fotografiche completamente automatizzato con supporto audio, carosello interattivo, vista griglia e deployment automatico su GitHub Pages.

## ✨ Caratteristiche Principali

- 🎯 **Rilevamento automatico gallerie** - Zero configurazione manuale
- 🎵 **Supporto audio integrato** - Musica di sottofondo con controlli
- 🎠 **Carosello interattivo** - Autoplay, swipe, zoom su mobile
- 🔲 **Vista griglia** - Anteprima rapida di tutte le foto
- 📱 **Responsive design** - Ottimizzato per mobile e desktop
- 🚀 **Deploy automatico** - Versioning incrementale su GitHub Pages
- 📊 **Statistiche complete** - Conteggio foto e audio per galleria

## 🏗️ Struttura del Progetto

```
/
├── index.html              # Homepage con rilevamento automatico gallerie
├── gallery.html            # Visualizzatore galleria con carosello e griglia
├── gallery.txt             # Lista gallerie (generato automaticamente)
├── bash/
│   ├── scan.sh             # Script scansione automatica
│   └── deploy.sh           # Script deploy automatico
└── [nome-galleria]/
    ├── *.JPG               # File foto (JPG, PNG, WEBP, etc.)
    ├── *.mp3               # File audio opzionali
    ├── photo.txt           # Lista foto (generato automaticamente)
    └── song.txt            # Lista audio (generato automaticamente)
```

## 🚀 Guida Rapida

### Metodo Automatico (Consigliato)

1. **Crea cartella** con foto e file audio (opzionali):
   ```bash
   mkdir "2025-09-23 mio evento"
   # Aggiungi foto e file audio nella cartella...
   ```

2. **Esegui scansione automatica**:
   ```bash
   # Su Linux/Mac
   cd bash && ./scan.sh

   # Su Windows con Git Bash
   cd bash && & "C:\Program Files\Git\bin\bash.exe" ./scan.sh
   ```

3. **✨ FATTO!** - Nessuna configurazione manuale necessaria
   - Lo script genera automaticamente `gallery.txt`
   - L'homepage rileva automaticamente le nuove gallerie

4. **Deploy automatico**:
   ```bash
   # Su Linux/Mac
   ./bash/deploy.sh

   # Su Windows con Git Bash
   & "C:\Program Files\Git\bin\bash.exe" bash/deploy.sh
   ```

## 🎵 Sistema Audio

### Funzionalità Audio
- **Riproduzione automatica** di musica di sottofondo
- **Controlli integrati** - Play/Pause, Volume, Skip
- **Riproduzione casuale** - Cambia brano automaticamente
- **Gestione errori** - Salta file corrotti automaticamente

### Formati Supportati
- MP3, WAV, OGG, M4A

### Controlli Audio
- 🎵 **Play/Pause** - Avvia/ferma la riproduzione
- 🔊 **Volume** - Slider per regolare il volume
- ⏭️ **Skip** - Passa al brano successivo
- 📱 **Mobile-friendly** - Controlli ottimizzati per touch

## 🎠 Sistema Carosello

### Funzionalità Carosello
- **Autoplay** - Cambio foto automatico ogni 4 secondi
- **Navigazione** - Frecce prev/next, swipe su mobile
- **Zoom mobile** - Pinch-to-zoom su dispositivi touch
- **Contatore** - Mostra posizione corrente (es. "5/20")
- **Lazy loading** - Caricamento ottimizzato delle immagini

### Controlli Carosello
- ⬅️➡️ **Frecce** - Navigazione manuale
- 📱 **Swipe** - Scorri con il dito su mobile
- 🔍 **Zoom** - Pinch-to-zoom su mobile
- ⏸️ **Pausa hover** - Autoplay si ferma al passaggio del mouse

## 🔲 Vista Griglia

### Funzionalità Griglia
- **Anteprima completa** - Tutte le foto in una vista
- **Click per aprire** - Passa al carosello sulla foto selezionata
- **Layout responsive** - Si adatta a diverse dimensioni schermo
- **Caricamento ottimizzato** - Lazy loading per performance

## 🔍 Script di Automazione

### scan.sh - Scansione Automatica

Lo script `scan.sh` automatizza completamente la gestione delle gallerie:

**Cosa fa:**
- Scansiona tutte le cartelle del progetto
- Genera `photo.txt` per ogni cartella con foto
- Genera `song.txt` per ogni cartella con audio
- Crea `gallery.txt` con l'elenco delle gallerie valide
- Mostra statistiche complete

**Output esempio:**
```
🔍 Gallery Scanner - Generazione automatica photo.txt e song.txt
==================================================================
📁 Processando: 2025-09-20 corteo per gaza (blocco della vempa)
✅ Trovate 150 immagini → photo.txt
✅ Trovati 3 file audio → song.txt
📊 Cartella completata: 150 foto, 3 audio

📝 Generazione gallery.txt...
✅ Generato gallery.txt con 1 gallerie

📊 STATISTICHE FINALI:
   📂 Cartelle processate: 1/1
   📸 Foto totali: 150
   🎵 File audio totali: 3
   📋 Gallerie valide: 1
```

### deploy.sh - Deploy Automatico

Lo script `deploy.sh` automatizza il deployment con versioning:

**Cosa fa:**
- Rileva automaticamente le modifiche
- Calcola la versione incrementale
- Crea commit con messaggio standardizzato
- Effettua push su GitHub
- Mostra statistiche del deploy

**Output esempio:**
```
🚀 Deploy Automatico Gallery - Versioning Incrementale
==================================================================
📝 Modifiche rilevate:
 M gallery.html
 M index.html
📈 Versione precedente: 17
🆕 Nuova versione: 18
✅ Commit creato: rev 18
✅ Push completato con successo
```

## 🌐 Deployment su GitHub Pages

### Setup Iniziale
1. **Crea repository** su GitHub
2. **Abilita GitHub Pages** nelle impostazioni del repository
3. **Seleziona branch** `main` o `master` come source

### Deploy Automatico
```bash
# Deploy con versioning automatico
./bash/deploy.sh
```

### URL di Accesso
Il sito sarà disponibile su:
```
https://[username].github.io/[repository-name]/
```

## 📱 Compatibilità

### Browser Supportati
- ✅ Chrome/Chromium (consigliato)
- ✅ Firefox
- ✅ Safari
- ✅ Edge
- ✅ Mobile browsers (iOS Safari, Chrome Mobile)

### Dispositivi
- 💻 **Desktop** - Esperienza completa con tutti i controlli
- 📱 **Mobile** - Interfaccia ottimizzata con swipe e zoom
- 📟 **Tablet** - Layout adattivo per schermi medi

## 🛠️ Risoluzione Problemi

### Script non funziona
- **Su Windows**: Usa Git Bash invece di PowerShell
- **Permessi**: Esegui `chmod +x bash/scan.sh bash/deploy.sh`
- **Directory**: Assicurati di essere nella directory principale

### Gallerie non appaiono
- Verifica che `gallery.txt` sia stato generato
- Controlla che le cartelle contengano file `photo.txt`
- Esegui nuovamente `scan.sh`

### Audio non funziona
- Verifica che i file audio siano in formato supportato
- Controlla che `song.txt` sia stato generato
- Alcuni browser richiedono interazione utente per l'audio

### Problemi di caricamento
- Usa sempre un server HTTP (non aprire file:// direttamente)
- Verifica la connessione internet per GitHub Pages
- Controlla la console browser per errori specifici

## 🎯 Workflow Completo

### Aggiungere Nuova Galleria
```bash
# 1. Crea cartella con foto e audio
mkdir "2025-09-23 nuovo evento"
# Aggiungi foto e file audio...

# 2. Scansione automatica
cd bash && ./scan.sh

# 3. Deploy automatico
./deploy.sh

# 4. ✨ La nuova galleria è online!
```

### Aggiornare Galleria Esistente
```bash
# 1. Aggiungi/rimuovi foto dalla cartella

# 2. Rigenera file di configurazione
cd bash && ./scan.sh

# 3. Deploy modifiche
./deploy.sh
```

## 🚀 Caratteristiche Avanzate

### Autoplay Intelligente
- Si ferma durante hover del mouse
- Si ferma durante zoom su mobile
- Si ferma nella vista griglia
- Riprende automaticamente quando appropriato

### Gestione Errori
- Fallback automatico per file corrotti
- Messaggi di errore user-friendly
- Recovery automatico da problemi di rete

### Performance
- Lazy loading delle immagini
- Caricamento asincrono dell'audio
- Ottimizzazione per dispositivi mobili
- Cache intelligente del browser

## 🔧 Dettagli Tecnici

### Architettura
- **Frontend**: HTML5, CSS3, JavaScript ES6+
- **Framework**: Bootstrap 5.3.2
- **Icons**: Font Awesome 6.4.0
- **Audio**: Web Audio API
- **Responsive**: CSS Grid e Flexbox

### File Generati Automaticamente
- `photo.txt` - Lista delle foto per ogni galleria
- `song.txt` - Lista dei file audio per ogni galleria
- `gallery.txt` - Lista delle gallerie valide

### Formati Supportati
- **Immagini**: JPG, JPEG, PNG, GIF, WEBP
- **Audio**: MP3, WAV, OGG, M4A

---

**Sviluppato con ❤️ per una gestione semplice e automatica delle gallerie fotografiche**