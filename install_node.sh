#!/bin/bash

# Script d'installation de Geth (Ethereum) 🚀
# Fonctionne sous Ubuntu / Debian / MacOS

echo "🔧 Installation de Geth (Go Ethereum)..."

# Détection de l'OS
OS="$(uname -s)"
case "${OS}" in
    Linux*)     OS_TYPE=Linux;;
    Darwin*)    OS_TYPE=Mac;;
    *)          OS_TYPE="UNKNOWN"
esac

# Installation sous Linux (Ubuntu/Debian)
if [[ "$OS_TYPE" == "Linux" ]]; then
    echo "🟢 Détection d'un système Linux..."
    sudo add-apt-repository -y ppa:ethereum/ethereum
    sudo apt update
    sudo apt install -y ethereum
    echo "✅ Installation terminée !"

# Installation sous MacOS (via Homebrew)
elif [[ "$OS_TYPE" == "Mac" ]]; then
    echo "🍏 Détection d'un système MacOS..."
    brew tap ethereum/ethereum
    brew install ethereum
    echo "✅ Installation terminée !"

else
    echo "❌ Système non supporté. Installez Geth manuellement depuis https://geth.ethereum.org/downloads/"
    exit 1
fi

# Vérification de l'installation
echo "🔍 Vérification de l'installation..."
geth version || { echo "❌ Erreur : Geth n'est pas installé correctement."; exit 1; }

# Lancer un nœud en mode développement
echo "🚀 Démarrage du nœud Ethereum en mode développement..."
geth --dev --http --http.api eth,net,web3,personal --datadir ./eth-data &

echo "✅ Nœud Ethereum lancé avec succès !"
echo "🌍 Accédez à la console avec : geth attach http://127.0.0.1:8545"

exit 0
