# ╔══════════════════════════════════════════════════════╗
# ║          💔  PERDÓN — Lanzador Cinematográfico  💔   ║
# ╠══════════════════════════════════════════════════════╣
# ║  Ejecuta este script para abrir la experiencia      ║
# ║  de disculpas en tu navegador.                      ║
# ╚══════════════════════════════════════════════════════╝

$Host.UI.RawUI.WindowTitle = "💔 Perdón..."

Clear-Host

Write-Host ""
Write-Host "  ╔══════════════════════════════════════════════╗" -ForegroundColor DarkYellow
Write-Host "  ║                                              ║" -ForegroundColor DarkYellow
Write-Host "  ║   🍽️  P E R D Ó N   T Í O S  🍽️            ║" -ForegroundColor Yellow
Write-Host "  ║     por no ir a comer con vosotros...        ║" -ForegroundColor Yellow
Write-Host "  ║                                              ║" -ForegroundColor DarkYellow
Write-Host "  ╚══════════════════════════════════════════════╝" -ForegroundColor DarkYellow
Write-Host ""

# Animación de texto en consola
$messages = @(
    "Preparando las disculpas más curradas del mundo...",
    "Sé que la comida estaba increíble y me la perdí...",
    "Cada pixel de esto huele a arrepentimiento...",
    "Abriendo tu navegador..."
)

foreach ($msg in $messages) {
    Write-Host "  ✦ " -NoNewline -ForegroundColor Cyan
    foreach ($char in $msg.ToCharArray()) {
        Write-Host $char -NoNewline -ForegroundColor White
        Start-Sleep -Milliseconds 30
    }
    Write-Host ""
    Start-Sleep -Milliseconds 600
}

Write-Host ""

# Abrir el archivo HTML en el navegador predeterminado
$htmlPath = Join-Path $PSScriptRoot "perdon.html"

if (Test-Path $htmlPath) {
    Start-Process $htmlPath
    Write-Host ""
    Write-Host "  ═══════════════════════════════════════════" -ForegroundColor DarkYellow
    Write-Host "  🍽️  La experiencia se ha abierto en tu navegador." -ForegroundColor Yellow
    Write-Host "  🍽️  Click o ESPACIO para avanzar entre escenas." -ForegroundColor Yellow
    Write-Host "  ═══════════════════════════════════════════" -ForegroundColor DarkYellow
} else {
    Write-Host "  ⚠️  No se encontró perdon.html en: $htmlPath" -ForegroundColor Red
}

Write-Host ""
Write-Host "  Pulsa cualquier tecla para cerrar..." -ForegroundColor DarkGray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
