# 🎵 Funzionalità Audio per la Gallery

## Panoramica

La gallery fotografica ora supporta la riproduzione automatica di musica di sottofondo! La funzionalità legge un file `song.txt` dalla cartella della gallery e riproduce casualmente i file audio elencati.

## Come Funziona

### 1. File song.txt
Crea un file chiamato `song.txt` nella cartella della tua gallery con un elenco di file audio, uno per riga:

```
canzone1.mp3
musica-ambiente.wav
sottofondo.m4a
```

### 2. Formati Audio Supportati
- `.mp3`, `.MP3`
- `.wav`, `.WAV`
- `.ogg`, `.OGG`
- `.m4a`, `.M4A`
- `.aac`, `.AAC`

### 3. Controlli Audio
Quando apri una gallery con file audio disponibili, vedrai i controlli audio nell'angolo in alto a destra:

- **🎵 Play/Pause**: Avvia o mette in pausa la riproduzione
- **🔊 Volume**: Slider per regolare il volume (0-100%)
- **📝 Info**: Mostra il nome del file attualmente in riproduzione

## Comportamento

### Riproduzione Automatica
- La musica inizia automaticamente quando carichi la gallery
- Quando una canzone finisce, ne viene selezionata una nuova casualmente
- La riproduzione continua in loop infinito

### Gestione Errori
- Se `song.txt` non esiste: i controlli audio sono disabilitati
- Se un file audio non esiste: viene saltato automaticamente
- Se nessun file audio funziona: la riproduzione si ferma

### Responsive Design
- Su desktop: controlli completi con info del brano
- Su mobile: controlli compatti senza info del brano

## Esempio di Utilizzo

1. **Aggiungi file audio** alla cartella della gallery
2. **Crea song.txt** con l'elenco dei file:
   ```
   fabrizio de andrè - la canzone del maggio.m4a
   background-music.mp3
   ambient-sound.wav
   ```
3. **Apri la gallery** - la musica inizierà automaticamente!

## Vantaggi

- ✅ **Riproduzione casuale** - ogni visita è un'esperienza diversa
- ✅ **Gestione errori robusta** - salta automaticamente i file problematici
- ✅ **Controlli intuitivi** - play/pause e volume facilmente accessibili
- ✅ **Design responsive** - funziona perfettamente su mobile e desktop
- ✅ **Non invasivo** - se non c'è song.txt, la gallery funziona normalmente

## Note Tecniche

- I file audio devono essere nella stessa cartella delle foto
- La riproduzione richiede interazione utente su alcuni browser (policy autoplay)
- Il volume predefinito è impostato al 50%
- La selezione casuale evita ripetizioni immediate
