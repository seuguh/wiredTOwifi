# Définir les variables pour les noms des adaptateurs réseau
# C'est les valeurs par défaut
$ethernetAdapter = "Ethernet"
$wifiAdapter = "Wi-Fi"

# Obtenir l'état des adaptateurs réseau
$ethernet = Get-NetAdapter -Name $ethernetAdapter
$wifi = Get-NetAdapter -Name $wifiAdapter

# Vérifier si Ethernet est activé
if ($ethernet.Status -eq "Up") {
    # Désactiver Ethernet et activer Wi-Fi
    Disable-NetAdapter -Name $ethernetAdapter -Confirm:$false
    Enable-NetAdapter -Name $wifiAdapter -Confirm:$false
    Write-Output "Basculé vers Wi-Fi"
}
elseif ($wifi.Status -eq "Up") {
    # Désactiver Wi-Fi et activer Ethernet
    Disable-NetAdapter -Name $wifiAdapter -Confirm:$false
    Enable-NetAdapter -Name $ethernetAdapter -Confirm:$false
    Write-Output "Basculé vers Ethernet"
}
else {
    Write-Output "Aucune connexion active trouvée"
}