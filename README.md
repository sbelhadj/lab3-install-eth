# 🏗️ Lab 3 : Installer et Interagir avec un Réseau de 3 Nœuds Ethereum Locaux

## 🎯 Objectif  
Dans ce Lab, vous allez :  
✅ Installer **Geth (Go Ethereum)** sur votre machine Linux  
✅ Démarrer **3 nœuds Ethereum** sur votre machine  
✅ Les **connecter entre eux** pour former un réseau privé  
✅ Observer comment les blocs sont minés et validés  
✅ Lire et analyser les logs des nœuds  

---

## 🚀 **1. Installation Automatique de Geth**  

### 📌 **Si vous êtes sous Linux, exécutez le script automatique**  


chmod +x install_node.sh
./install_node.sh
Ce script va :
✔️ Installer Geth
✔️ Créer un réseau Ethereum privé
✔️ Générer une genesis.json pour définir la blockchain

🏗 2. Démarrer 3 Nœuds Ethereum Locaux
1️⃣ Lancer les 3 nœuds en exécutant le script suivant :
chmod +x start_nodes.sh
./start_nodes.sh

2️⃣ Observer les logs des nœuds :

tail -f node1/geth.log
tail -f node2/geth.log
tail -f node3/geth.log

3️⃣ Attacher une console à un nœud pour l’investigation :
geth attach node1/geth.ipc

4️⃣ Vérifier la liste des pairs (autres nœuds connectés) :
admin.peers

5️⃣ Vérifier l’état de la blockchain :
eth.blockNumber

6️⃣ Créer un compte Ethereum sur un nœud :

javascript
Copy
Edit
personal.newAccount("mot_de_passe")


📤 3. Soumission
📌 Répondez aux questions dans student_submission.md :

Quels sont les IDs des nœuds dans admin.nodeInfo ?
Combien de pairs sont connectés dans admin.peers ?
Combien de blocs ont été minés après 5 minutes ?
