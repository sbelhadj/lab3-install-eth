#!/bin/bash

echo "🚀 Démarrage des 3 nœuds Ethereum..."

# Lancer le premier nœud (miner)
geth --datadir node1 --networkid 2024 --http --http.addr "0.0.0.0" --http.api "admin,eth,net,web3,personal" --port 30303 --nodiscover --allow-insecure-unlock --miner.threads=1 --miner.gasprice=0 --syncmode full --mine > node1/geth.log 2>&1 &

# Lancer le deuxième nœud
geth --datadir node2 --networkid 2024 --http --http.addr "0.0.0.0" --port 30304 --nodiscover --bootnodes "enode://$(geth attach node1/geth.ipc --exec "admin.nodeInfo.enode")" > node2/geth.log 2>&1 &

# Lancer le troisième nœud
geth --datadir node3 --networkid 2024 --http --http.addr "0.0.0.0" --port 30305 --nodiscover --bootnodes "enode://$(geth attach node1/geth.ipc --exec "admin.nodeInfo.enode")" > node3/geth.log 2>&1 &

echo "✅ Les nœuds sont lancés et synchronisés !"
echo "🛠 Pour voir les logs :"
echo "  tail -f node1/geth.log"
echo "  tail -f node2/geth.log"
echo "  tail -f node3/geth.log"

echo "🔍 Attacher une console :"
echo "  geth attach node1/geth.ipc"
