# Test Locale del Sistema

Questo file spiega come testare il sistema di gallerie fotografiche in locale prima del deploy su GitHub.

## 🖥️ Server Locale

Per testare il sistema in locale, hai bisogno di un server HTTP perché i browser moderni bloccano le richieste `fetch()` sui file locali.

### Opzioni per Server Locale

#### 1. Python (Consigliato)
```bash
# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```

#### 2. Node.js
```bash
# Installa http-server globalmente
npm install -g http-server

# Avvia il server
http-server -p 8000
```

#### 3. PHP
```bash
php -S localhost:8000
```

#### 4. Live Server (VS Code)
- Installa l'estensione "Live Server" in VS Code
- Click destro su `index.html` → "Open with Live Server"

## 🧪 Procedura di Test

1. **Avvia il server locale** nella cartella del progetto
2. **Apri il browser** su `http://localhost:8000`
3. **Testa la navigazione**:
   - Index principale deve mostrare le gallerie
   - Click su una galleria deve aprire la visualizzazione
   - Controlli carosello e griglia devono funzionare
   - Swipe su mobile deve funzionare

## 🔍 Checklist di Test

### ✅ Index Principale
- [ ] Carica correttamente
- [ ] Mostra le gallerie configurate
- [ ] Conta correttamente le foto
- [ ] Cards sono cliccabili

### ✅ Galleria
- [ ] Carica le foto dalla cartella corretta
- [ ] Carosello funziona (frecce, indicatori)
- [ ] Griglia mostra tutte le foto
- [ ] Click su foto in griglia apre carosello
- [ ] Autoplay funziona (15 secondi)
- [ ] Controlli touch funzionano su mobile

### ✅ Responsive
- [ ] Desktop: layout corretto
- [ ] Tablet: controlli appropriati
- [ ] Mobile: swipe e zoom funzionano

### ✅ Performance
- [ ] Caricamento veloce
- [ ] Lazy loading delle immagini
- [ ] Transizioni fluide

## 🐛 Problemi Comuni

### Le foto non si caricano
- Verifica che `list.txt` esista nella cartella
- Controlla che i nomi in `list.txt` corrispondano ai file reali
- Assicurati che il server locale sia attivo

### La galleria non appare nell'index
- Verifica che la cartella sia in `galleries-config.js`
- Controlla che `list.txt` contenga almeno un'immagine valida

### Errori CORS
- Usa sempre un server HTTP locale, non aprire direttamente i file HTML

## 📱 Test Mobile

Per testare su dispositivi mobili:

1. **Trova l'IP locale**:
   ```bash
   # Linux/Mac
   ifconfig | grep inet
   
   # Windows
   ipconfig
   ```

2. **Accedi da mobile**: `http://[TUO-IP]:8000`

3. **Testa funzionalità touch**:
   - Swipe orizzontale per cambiare foto
   - Pinch-to-zoom senza cambiare foto
   - Controlli touch responsive

## 🚀 Deploy Test

Prima del push finale:

1. **Test completo locale** ✅
2. **Verifica configurazione** in `galleries-config.js`
3. **Controlla tutti i file** `list.txt`
4. **Test responsive** su diverse dimensioni
5. **Push su GitHub** 🚀

## 💡 Tips

- **Usa DevTools** per simulare dispositivi mobili
- **Testa con foto di diverse dimensioni** (verticali/orizzontali)
- **Verifica performance** con molte foto
- **Controlla console** per errori JavaScript

Una volta che tutto funziona in locale, il deploy su GitHub Pages sarà identico! 🎯
