
#!/bin/bash

# Script d'installation de Geth 

echo " Installation de Geth..."
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt update
sudo apt install -y ethereum

echo "✅ Installation terminée !"

# Création du dossier de configuration
mkdir -p eth-net
cd eth-net

echo "🔨 Génération du fichier genesis.json..."

cat <<EOF > genesis.json
{
  "config": {
    "chainId": 2024,
    "homesteadBlock": 0,
    "eip150Block": 0,
    "eip155Block": 0,
    "eip158Block": 0,
    "byzantiumBlock": 0,
    "constantinopleBlock": 0
  },
  "difficulty": "0x1",
  "gasLimit": "0x8000000",
  "alloc": {}
}
EOF

echo "✅ Genesis Block créé avec succès !"

echo " Initialisation des nœuds..."
geth --datadir node1 init genesis.json
geth --datadir node2 init genesis.json
geth --datadir node3 init genesis.json

echo "✅ Tous les nœuds sont prêts !"
