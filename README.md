# wiredTOwifi
script pour switcher le reseau filaire et le partage de co wifi sans débrancher le rj45


Créer un raccourci sur le bureau :

Faites un clic droit sur le bureau, sélectionnez Nouveau puis Raccourci.
Dans le champ de l'emplacement de l'élément, tapez :
powershell.exe -File "C:\Chemin\Vers\Votre\Script\wiredTOwifi.ps1"
Remplacez "C:\Chemin\Vers\Votre\Script\ToggleNetwork.ps1" par le chemin réel où vous avez enregistré le script.
Cliquez sur Suivant, donnez un nom à votre raccourci (par exemple, "Basculer Réseau"), puis cliquez sur Terminer.
Configurer le raccourci pour s'exécuter en tant qu'administrateur :

Faites un clic droit sur le raccourci que vous venez de créer et sélectionnez Propriétés.
Dans l'onglet Raccourci, cliquez sur Avancé.
Cochez la case Exécuter en tant qu'administrateur, puis cliquez sur OK.

# Hints
Pour debug, options pour powershell.exe
 - Ne pas fermer la fenêtre (pour voir la sortie)
powershell.exe -NoExit -File "C:\Chemin\Vers\Votre\Script\wiredTOwifi.ps1"
 - Si l'execution de script est pohibé par les politiques d'exécution (ça semble une bonne idée)
 powershell.exe -ExecutionPolicy Bypass -File "C:\Chemin\Vers\Votre\Script\wiredTOwifi.ps1"