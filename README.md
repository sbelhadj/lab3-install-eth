# 🏗️ Lab 3 : Installation d'un Nœud Ethereum  

## 🎯 Objectif  
✅ Installer un client Ethereum localement (**Geth**)  
✅ Démarrer un nœud Ethereum privé  
✅ Exécuter des commandes de base pour interagir avec la blockchain  

---

## 🛠️ **1. Installation de Geth**  

### 📌 **Sous Linux / MacOS**  

```bash
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt update
sudo apt install ethereum

Ou utilisez le script install_node.sh :
bash
chmod +x install_node.sh
./install_node.sh

### 📌 Sous Windows
Téléchargez et installez Geth depuis :
➡️ https://geth.ethereum.org/downloads/


🚀 2. Lancer un Nœud Ethereum
Démarrez un nœud Ethereum local :

bash

geth --dev --http --http.api eth,net,web3,personal --datadir ./eth-data
Ouvrez une console pour interagir :

bash

geth attach http://127.0.0.1:8545
Essayez les commandes :

javascript

eth.blockNumber
eth.accounts
eth.getBalance(eth.accounts[0])

📤 Soumettez vos résultats dans student_submission.md.
