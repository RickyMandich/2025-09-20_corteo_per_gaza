# 📸 Sistema di Gallerie Fotografiche Automatico

Un sistema completo e automatizzato per creare e gestire gallerie fotografiche con funzionalità audio, deploy automatico e strumenti di automazione avanzati.

## 🚀 Caratteristiche Principali

- **📁 Configurazione semplice**: Lista cartelle in un solo punto
- **🖼️ Nome file visibile**: Mostra il nome di ogni foto
- **⬇️ Download integrato**: Pulsante per scaricare ogni foto
- **📱 Touch ottimizzato**: Zoom e swipe perfetti su mobile
- **🎵 Audio di sottofondo**: Riproduzione casuale di musica
- **🔍 Automazione completa**: Script per scansione e deploy automatici
- **🎨 Design moderno**: Interfaccia dark mode responsive
- **⚡ Deploy automatico**: Perfetto per GitHub Pages

## 📁 Struttura del Progetto

```
/
├── index.html              # Index principale (rilevamento automatico)
├── gallery.html            # Galleria modulare con nome file e download
├── scan.sh                 # Script automazione scansione file
├── deploy.sh               # Script deploy automatico (Linux/Mac)
├── deploy.ps1              # Script deploy automatico (Windows)
├── README.md              # Documentazione completa
└── [cartella-foto]/
    ├── foto1.JPG
    ├── foto2.JPG
    ├── audio1.mp3         # File audio opzionali
    ├── ...
    ├── photo.txt          # Lista foto (generato automaticamente)
    └── song.txt           # Lista audio (generato automaticamente)
```

## 🚀 Guida Rapida

### Metodo 1: Completamente Automatico (Consigliato)

1. **Crea cartella** con foto e file audio (opzionali)
2. **Esegui scansione automatica**:
   ```bash
   # Su Linux/Mac dalla directory principale
   chmod +x bash/scan.sh
   cd bash && ./scan.sh

   # Su Windows dalla directory bash
   cd bash
   & "C:\Program Files\Git\bin\bash.exe" ./scan.sh
   ```
3. **✨ NESSUNA configurazione manuale necessaria!**
   - Lo script genera automaticamente `gallery.txt` con l'elenco delle gallerie
   - L'index.html legge automaticamente da `gallery.txt`
4. **Deploy automatico**:
   ```bash
   ./deploy.sh  # Linux/Mac
   .\deploy.ps1 # Windows PowerShell
   ```

### Metodo 2: Manuale

1. **Crea cartella** con le tue foto
2. **Genera photo.txt** manualmente:
   ```bash
   cd "nome-cartella-foto"
   ls *.JPG > photo.txt
   ```
3. **Aggiungi cartella** alla configurazione
4. **Push manuale** su GitHub

## 🎯 Funzionalità Complete

### 📸 Visualizzazione Gallerie

1. **Index automatico** - Rileva e mostra tutte le gallerie configurate
2. **Navigazione intuitiva**:
   - **Frecce**: Avanti/indietro
   - **Swipe**: Su mobile (senza interferire con zoom)
   - **Griglia**: Panoramica di tutte le foto
   - **Nome file**: Visibile sotto ogni foto
   - **Download**: Pulsante per scaricare la foto corrente

### 🎵 Sistema Audio Integrato

- **Riproduzione automatica** di musica di sottofondo
- **Controlli audio** completi (play/pause, volume)
- **Selezione casuale** dei brani
- **Gestione errori** robusta
- **Design responsive** per mobile e desktop

### 🔍 Automazione Avanzata

- **Scansione automatica** di foto e audio
- **Generazione automatica** di `photo.txt` e `song.txt`
- **Deploy automatico** con versioning incrementale
- **Rinominazione automatica** da `list.txt` a `photo.txt`
- **Statistiche dettagliate** di elaborazione

## 🎯 Sistema Completamente Automatico

### 🚀 Rilevamento Automatico delle Gallerie

Il sistema ora è **completamente automatico**! Non è più necessario aggiornare manualmente la lista delle gallerie in `index.html`.

**Come funziona:**
1. Lo script `scan.sh` genera automaticamente il file `gallery.txt`
2. L'`index.html` legge automaticamente da `gallery.txt`
3. Ogni nuova cartella con foto viene rilevata automaticamente

**Vantaggi:**
- ✅ **Zero configurazione manuale** dell'index
- ✅ **Aggiunta gallerie istantanea** - basta eseguire lo script
- ✅ **Sincronizzazione automatica** tra cartelle e index
- ✅ **Fallback intelligente** se `gallery.txt` non esiste

## 🔍 Script di Automazione

### 📋 scan.sh - Scansione Automatica Completa

Lo script `scan.sh` automatizza completamente la generazione dei file `photo.txt` e `song.txt`:

```bash
# Su Linux/Mac
chmod +x scan.sh
./scan.sh

# Su Windows con Git Bash
"C:\Program Files\Git\bin\bash.exe" ./scan.sh
```

**Funzionalità:**
- 🔄 **Rinomina automaticamente** `list.txt` → `photo.txt`
- 📸 **Scansiona immagini**: `.jpg`, `.jpeg`, `.png`, `.gif`, `.webp` (e maiuscole)
- 🎵 **Scansiona audio**: `.mp3`, `.wav`, `.ogg`, `.m4a`, `.aac` (e maiuscole)
- 📋 **Genera gallery.txt**: Lista automatica delle gallerie per l'index
- 📊 **Statistiche dettagliate** per ogni cartella processata
- ⚡ **Performance elevata**: ~1000 file/secondo
- 🎯 **Zero configurazione**: Elimina la necessità di aggiornare manualmente l'index

**Output esempio:**
```
🔍 Gallery Scanner - Generazione automatica photo.txt e song.txt
==================================================================
📁 Processando: mia-cartella-foto
✅ Trovate 150 immagini → photo.txt
✅ Trovati 3 file audio → song.txt
📊 Cartella completata: 150 foto, 3 audio

📝 Generazione gallery.txt...
✅ Generato gallery.txt con 1 gallerie
```

### 🚀 deploy.sh / deploy.ps1 - Deploy Automatico

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
- 🔢 **Versioning automatico** incrementale (`rev 1`, `rev 2`, `rev 3`...)
- 🔍 **Controlli intelligenti** (repository Git, modifiche presenti)
- 📊 **Output dettagliato** con feedback colorato
- 🛡️ **Gestione errori** robusta

**Processo automatico:**
1. `git add .`
2. `git commit -m "rev X"` (X = versione precedente + 1)
3. `git push`
4. `git status`

**Output esempio:**
```
🚀 Deploy Automatico Gallery - Versioning Incrementale
📈 Versione precedente: 5
🆕 Nuova versione: 6
✅ Commit creato: rev 6
✅ Push completato con successo
```

## 🎵 Sistema Audio Integrato

### Configurazione Audio

Per aggiungere musica di sottofondo alla tua gallery:

1. **Aggiungi file audio** nella cartella della gallery
2. **Crea `song.txt`** con l'elenco dei file audio (uno per riga):
   ```
   fabrizio de andrè - la canzone del maggio.m4a
   background-music.mp3
   ambient-sound.wav
   ```
3. **Apri la gallery** - la musica inizierà automaticamente!

### Controlli Audio

- **🎵 Play/Pause**: Avvia o mette in pausa la riproduzione
- **🔊 Volume**: Slider per regolare il volume (0-100%)
- **📝 Info**: Mostra il nome del file attualmente in riproduzione

### Comportamento

- **Riproduzione automatica** quando carichi la gallery
- **Selezione casuale** dei brani
- **Loop infinito** - quando una canzone finisce, ne viene selezionata una nuova
- **Gestione errori robusta** - salta automaticamente i file problematici
- **Design responsive** - controlli adattivi per mobile e desktop

### Formati Audio Supportati

- `.mp3`, `.MP3`
- `.wav`, `.WAV`
- `.ogg`, `.OGG`
- `.m4a`, `.M4A`
- `.aac`, `.AAC`

## 🚀 Deployment su GitHub

### Workflow Consigliato

1. **Clona/Fork** questo repository
2. **Aggiungi le tue foto** in cartelle separate
3. **Esegui scansione automatica**:
   ```bash
   ./scan.sh
   ```
4. **Deploy automatico**:
   ```bash
   ./deploy.sh
   ```

### Vantaggi del Sistema

- ✅ **Configurazione semplice** - Una sola lista da aggiornare
- ✅ **Performance ottimale** - Nessuna ricerca automatica lenta
- ✅ **Deploy istantaneo** - Push e il sito si aggiorna
- ✅ **Hosting gratuito** con GitHub Pages
- ✅ **Backup automatico** su cloud
- ✅ **Condivisione facile** tramite URL

## 📱 Funzionalità Mobile

### Gestione Touch Avanzata

- **Swipe orizzontale**: Cambia foto
- **Pinch-to-zoom**: Zoom senza cambiare foto
- **Prevenzione scroll accidentale**: Durante lo zoom, lo swipe è disabilitato
- **Controlli audio compatti**: Ottimizzati per schermi piccoli

### Responsive Design

- Layout ottimizzato per schermi piccoli
- Controlli touch-friendly
- Dimensioni foto adattive
- Interfaccia audio responsive

## 🧪 Test Locale

Prima del deploy su GitHub, puoi testare tutto in locale:

### Server Locale

Per testare il sistema in locale, hai bisogno di un server HTTP:

```bash
# Python 3 (Consigliato)
python -m http.server 8000

# Node.js
npm install -g http-server
http-server -p 8000

# PHP
php -S localhost:8000
```

### Procedura di Test

1. **Avvia il server locale** nella cartella del progetto
2. **Apri il browser** su `http://localhost:8000`
3. **Testa tutte le funzionalità**:
   - Index principale deve mostrare le gallerie
   - Click su una galleria deve aprire la visualizzazione
   - Controlli carosello e griglia devono funzionare
   - Swipe su mobile deve funzionare
   - Audio deve riprodursi correttamente

### Test Mobile

Per testare su dispositivi mobili:

1. **Trova l'IP locale**: `ifconfig` (Linux/Mac) o `ipconfig` (Windows)
2. **Accedi da mobile**: `http://[TUO-IP]:8000`
3. **Testa funzionalità touch**: swipe, pinch-to-zoom, controlli audio

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

### Audio

- Volume predefinito: 50%
- Riproduzione automatica (richiede interazione utente su alcuni browser)
- Selezione casuale evita ripetizioni immediate

## 🔍 Risoluzione Problemi

### 📸 Problemi con le Foto

**Le foto non si caricano:**
1. Verifica che il file `photo.txt` esista nella cartella
2. Controlla che i nomi dei file in `photo.txt` corrispondano ai file reali
3. Assicurati che le estensioni siano supportate
4. Usa un server HTTP locale per i test (non aprire direttamente i file HTML)

**La cartella non appare nell'index:**
1. Verifica che esista il file `photo.txt` nella cartella
2. Controlla che il file contenga almeno un'immagine valida
3. Aggiungi la cartella alla lista in `index.html`
4. **Aspetta qualche secondo** - Il rilevamento è automatico

### 🎵 Problemi Audio

**L'audio non funziona:**
1. Verifica che esista il file `song.txt` nella cartella
2. Controlla che i nomi dei file audio in `song.txt` corrispondano ai file reali
3. Assicurati che le estensioni audio siano supportate
4. Su alcuni browser, l'audio richiede interazione utente (clicca play)
5. Controlla la console del browser per errori

### 🔧 Problemi Script

**scan.sh non funziona:**
- Su Windows: usa Git Bash
- Assicurati di essere nella directory principale del progetto
- Verifica che la directory contenga `gallery.html` o `index.html`

**deploy.sh non funziona:**
- Verifica di essere in una repository Git
- Controlla che ci siano modifiche da committare
- Assicurati di avere i permessi di push sul repository

### 🌐 Problemi CORS

**Errori di caricamento in locale:**
- Usa sempre un server HTTP locale
- Non aprire direttamente i file HTML nel browser
- Verifica che il server sia attivo sulla porta corretta

## 🎯 Workflow Completo

### Workflow Completamente Automatico (Consigliato)

```bash
# 1. Crea cartella con foto e audio
mkdir "2025-09-22 nuovo evento filtrato"
# Aggiungi foto e file audio...

# 2. Scansione automatica (genera tutto automaticamente!)
cd bash && ./scan.sh

# 3. ✨ NESSUNA configurazione manuale necessaria!
# Lo script ha già generato gallery.txt e l'index lo leggerà automaticamente

# 4. Deploy automatico
./deploy.sh
```

### Workflow Manuale (Solo se necessario)

```bash
# 1. Crea cartella con foto
mkdir "2025-09-22 nuovo evento filtrato"
cd "2025-09-22 nuovo evento filtrato"

# 2. Genera file di configurazione
ls *.JPG > photo.txt
ls *.mp3 > song.txt  # Opzionale per audio

# 3. Aggiorna gallery.txt manualmente
cd ..
echo "2025-09-22 nuovo evento filtrato" >> gallery.txt
sort gallery.txt -o gallery.txt

# 4. Push manuale
git add .
git commit -m "Nuova galleria"
git push
```

## 🚀 Caratteristiche Avanzate

### Miglioramenti Implementati

1. **📁 Configurazione semplice**: Una lista facile da aggiornare
2. **🏷️ Nome file visibile**: Ogni foto mostra il suo nome
3. **⬇️ Download integrato**: Pulsante per scaricare ogni foto
4. **📱 Touch perfetto**: Zoom senza cambiare foto accidentalmente
5. **🖼️ Foto verticali**: Visualizzazione completa senza ritaglio
6. **⚡ Performance**: Caricamento veloce e ottimizzato
7. **🎵 Audio integrato**: Musica di sottofondo con controlli completi
8. **🔍 Automazione completa**: Script per ogni aspetto del workflow

### Vantaggi del Sistema

- ✅ **Zero configurazione manuale** con gli script di automazione
- ✅ **Rilevamento automatico gallerie** tramite `gallery.txt`
- ✅ **Versioning automatico** per tracking delle modifiche
- ✅ **Gestione errori robusta** in tutti i componenti
- ✅ **Performance ottimale** con lazy loading e ottimizzazioni
- ✅ **Esperienza utente superiore** su mobile e desktop
- ✅ **Manutenzione minima** grazie all'automazione completa

## 📋 Estensioni Supportate

### Immagini (photo.txt)
- `.jpg`, `.JPG`
- `.jpeg`, `.JPEG`
- `.png`, `.PNG`
- `.gif`, `.GIF`
- `.webp`, `.WEBP`

### Audio (song.txt)
- `.mp3`, `.MP3`
- `.wav`, `.WAV`
- `.ogg`, `.OGG`
- `.m4a`, `.M4A`
- `.aac`, `.AAC`

## 💡 Tips e Best Practices

### Performance

- **Usa DevTools** per simulare dispositivi mobili durante i test
- **Testa con foto di diverse dimensioni** (verticali/orizzontali)
- **Verifica performance** con molte foto (>100)
- **Controlla console** per errori JavaScript

### Organizzazione

- **Nomi cartelle descrittivi**: Usa date e descrizioni chiare
- **Dimensioni foto ottimali**: Riduci le dimensioni per web se necessario
- **Audio di qualità**: Usa file compressi ma di buona qualità
- **Backup regolari**: Il sistema Git fornisce backup automatico

### Sicurezza

- **Non committare file sensibili**: Usa `.gitignore` se necessario
- **Controlla permessi repository**: Pubblico vs privato secondo le esigenze
- **Test locale sempre**: Prima di ogni deploy importante

## 🔗 Link Utili

- **GitHub Pages**: Hosting gratuito per il tuo sito
- **Bootstrap 5.3**: Framework CSS utilizzato
- **Git Bash**: Per Windows, per eseguire script bash

## 📄 Licenza

Questo progetto è open source e può essere utilizzato liberamente.

## 🤝 Contributi

Per miglioramenti o bug report, modifica direttamente i file secondo le tue esigenze.

---

**🎉 Sistema completo e pronto all'uso!**

Questo README unifica tutta la documentazione precedentemente sparsa in file separati, fornendo una guida completa e autosufficiente per utilizzare il sistema di gallerie fotografiche con tutte le sue funzionalità avanzate.
