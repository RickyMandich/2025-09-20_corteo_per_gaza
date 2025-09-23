# 🚀 Script di Deploy Automatico

## Panoramica

Gli script `deploy.sh` e `deploy.ps1` automatizzano completamente il processo di commit e push con versioning automatico incrementale.

## Funzionalità

### 🔢 **Versioning Automatico**
- Analizza l'ultimo commit con pattern "rev X"
- Incrementa automaticamente il numero di versione
- Genera commit con formato: `rev 1`, `rev 2`, `rev 3`, etc.

### 🔍 **Controlli Intelligenti**
- Verifica che siamo in una repository Git
- Controlla se ci sono modifiche da committare
- Mostra preview delle modifiche prima del commit

### 📊 **Output Dettagliato**
- Mostra versione precedente e nuova
- Feedback colorato per ogni operazione
- Riepilogo finale con informazioni repository
- Ultimi 5 commit per contesto

## Come Usare

### 🐧 **Linux/Mac - Bash Script**
```bash
# Rendi eseguibile (solo la prima volta)
chmod +x deploy.sh

# Esegui deploy
./deploy.sh
```

### 🪟 **Windows - PowerShell Script**
```powershell
# Esegui deploy
.\deploy.ps1
```

### 🪟 **Windows - Git Bash**
```bash
# Usa lo script bash con Git Bash
"C:\Program Files\Git\bin\bash.exe" ./deploy.sh
```

## Esempio di Output

```
🚀 Deploy Automatico Gallery - Versioning Incrementale
==================================================================
🔍 Controllo modifiche...
📝 Modifiche rilevate:
 M gallery.html
 M README.md
?? deploy.sh

🔢 Calcolo versione...
📈 Versione precedente: 5
🆕 Nuova versione: 6

💾 Preparazione commit...
📁 Aggiunta file al staging...
✅ File aggiunti al staging
📝 Creazione commit...
✅ Commit creato: rev 6
🌐 Push al repository remoto...
✅ Push completato con successo

📊 Status finale:
On branch main
Your branch is up to date with 'origin/main'.
nothing to commit, working tree clean

==================================================================
🎉 DEPLOY COMPLETATO!

📋 RIEPILOGO:
   📝 Commit: rev 6
   🔗 Branch: main
   🌐 Remote: https://github.com/user/repo.git

📚 Ultimi 5 commit:
   a1b2c3d rev 6 (1 second ago)
   e4f5g6h rev 5 (2 hours ago)
   i7j8k9l rev 4 (1 day ago)
   m0n1o2p rev 3 (2 days ago)
   q3r4s5t rev 2 (3 days ago)

🏁 Deploy completato con successo!
```

## Logica di Versioning

### 🔍 **Rilevamento Versione**
1. Cerca l'ultimo commit con pattern `rev X` nel messaggio
2. Estrae il numero X usando regex
3. Se non trova nessun commit "rev", inizia da 0

### ➕ **Incremento**
- Versione precedente: `rev 5`
- Nuova versione: `rev 6`
- Pattern supportati: `rev 1`, `rev  2`, `rev   3` (spazi multipli OK)

### 📝 **Formato Commit**
- Sempre: `rev [numero]`
- Esempi: `rev 1`, `rev 42`, `rev 100`

## Gestione Errori

### ❌ **Repository Non Git**
```
❌ Errore: Non siamo in una repository Git
💡 Esegui 'git init' per inizializzare una repository
```

### ❌ **Nessuna Modifica**
```
ℹ️  Nessuna modifica da committare
📊 Status corrente:
```

### ❌ **Errore Push**
```
❌ Errore durante git push
💡 Verifica la connessione e i permessi del repository
```

## Vantaggi

### ⚡ **Velocità**
- Un solo comando per tutto il processo
- Niente più `git add . && git commit -m "..." && git push`

### 🔢 **Versioning Consistente**
- Numerazione automatica e sequenziale
- Niente più messaggi di commit casuali
- Facile tracking delle versioni

### 🛡️ **Sicurezza**
- Controlli preliminari prima di ogni operazione
- Feedback immediato su errori
- Rollback automatico in caso di problemi

### 📊 **Visibilità**
- Output colorato e chiaro
- Informazioni complete su ogni operazione
- Contesto storico con ultimi commit

## Casi d'Uso

### 🔄 **Sviluppo Iterativo**
```bash
# Modifica file
vim gallery.html

# Deploy automatico
./deploy.sh
# → Crea "rev 15"
```

### 🚀 **Release Rapide**
```bash
# Aggiungi nuove foto
cp *.jpg gallery/

# Rigenera liste
./scan.sh

# Deploy
./deploy.sh
# → Crea "rev 16"
```

### 📈 **Tracking Progressi**
- Ogni modifica ha un numero univoco
- Facile vedere quante versioni sono state rilasciate
- Cronologia pulita e ordinata

## Personalizzazione

### 🎨 **Messaggi Commit Personalizzati**
Per modificare il formato del messaggio, edita la riga:
```bash
commit_message="rev ${new_version}"
```

Esempi alternativi:
```bash
commit_message="v${new_version}"           # → v1, v2, v3
commit_message="release ${new_version}"    # → release 1, release 2
commit_message="build ${new_version}"      # → build 1, build 2
```

### 🔧 **Pattern Versioning**
Per cambiare il pattern di ricerca, modifica la regex:
```bash
if [[ $last_commit =~ rev[[:space:]]*([0-9]+) ]]; then
```

## Note Tecniche

- **Compatibilità**: Bash 4.0+, PowerShell 5.0+
- **Dipendenze**: Git installato e configurato
- **Performance**: Istantaneo per repository normali
- **Sicurezza**: Non modifica mai la cronologia esistente
