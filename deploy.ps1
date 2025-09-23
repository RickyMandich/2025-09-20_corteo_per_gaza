# Script PowerShell per deploy automatico con versioning incrementale
# Autore: Gallery Photo System

Write-Host "🚀 Deploy Automatico Gallery - Versioning Incrementale" -ForegroundColor Blue
Write-Host "=================================================================="

# Verifica che siamo in una repository git
if (-not (Test-Path ".git")) {
    Write-Host "❌ Errore: Non siamo in una repository Git" -ForegroundColor Red
    Write-Host "💡 Esegui 'git init' per inizializzare una repository" -ForegroundColor Yellow
    exit 1
}

# Verifica se ci sono modifiche da committare
Write-Host "🔍 Controllo modifiche..." -ForegroundColor Blue

$gitDiff = git diff --quiet
$gitDiffStaged = git diff --staged --quiet

if ($LASTEXITCODE -eq 0 -and $gitDiffStaged -eq 0) {
    Write-Host "ℹ️  Nessuna modifica da committare" -ForegroundColor Yellow
    Write-Host "📊 Status corrente:" -ForegroundColor Cyan
    git status --short
    exit 0
}

# Mostra le modifiche
Write-Host "📝 Modifiche rilevate:" -ForegroundColor Cyan
git status --short

# Funzione per ottenere l'ultimo numero di versione
function Get-LastVersion {
    $lastCommit = git log --oneline --grep="rev" -n 1 --pretty=format:"%s" 2>$null
    
    if ([string]::IsNullOrEmpty($lastCommit)) {
        return 0
    }
    
    # Estrae il numero dopo "rev"
    if ($lastCommit -match "rev\s*(\d+)") {
        return [int]$matches[1]
    } else {
        return 0
    }
}

# Ottieni la versione corrente e incrementa
Write-Host "🔢 Calcolo versione..." -ForegroundColor Blue
$currentVersion = Get-LastVersion
$newVersion = $currentVersion + 1

Write-Host "📈 Versione precedente: $currentVersion" -ForegroundColor Cyan
Write-Host "🆕 Nuova versione: $newVersion" -ForegroundColor Green

# Crea il messaggio di commit
$commitMessage = "rev $newVersion"

Write-Host "💾 Preparazione commit..." -ForegroundColor Blue

# Git add
Write-Host "📁 Aggiunta file al staging..." -ForegroundColor Yellow
git add .

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Errore durante git add" -ForegroundColor Red
    exit 1
}

Write-Host "✅ File aggiunti al staging" -ForegroundColor Green

# Git commit
Write-Host "📝 Creazione commit..." -ForegroundColor Yellow
git commit -m $commitMessage

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Errore durante git commit" -ForegroundColor Red
    exit 1
}

Write-Host "✅ Commit creato: $commitMessage" -ForegroundColor Green

# Git push
Write-Host "🌐 Push al repository remoto..." -ForegroundColor Yellow
git push

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Errore durante git push" -ForegroundColor Red
    Write-Host "💡 Verifica la connessione e i permessi del repository" -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ Push completato con successo" -ForegroundColor Green

# Git status finale
Write-Host "📊 Status finale:" -ForegroundColor Blue
git status

# Informazioni finali
Write-Host ""
Write-Host "=================================================================="
Write-Host "🎉 DEPLOY COMPLETATO!" -ForegroundColor Green
Write-Host ""
Write-Host "📋 RIEPILOGO:" -ForegroundColor Cyan
Write-Host "   📝 Commit: $commitMessage" -ForegroundColor Green
$currentBranch = git branch --show-current
Write-Host "   🔗 Branch: $currentBranch" -ForegroundColor Green
$remoteUrl = git remote get-url origin 2>$null
if ($remoteUrl) {
    Write-Host "   🌐 Remote: $remoteUrl" -ForegroundColor Green
} else {
    Write-Host "   🌐 Remote: Non configurato" -ForegroundColor Green
}
Write-Host ""

# Mostra gli ultimi commit
Write-Host "📚 Ultimi 5 commit:" -ForegroundColor Cyan
git log --oneline -5 --pretty=format:"   %h %s (%cr)"
Write-Host ""
Write-Host ""

Write-Host "🏁 Deploy completato con successo!" -ForegroundColor Blue
