# Guide d'Utilisation du Site

## Table des Matières

1. [Visualisation des Piscines Disponibles](#1-visualisation-des-piscines-disponibles)
2. [Sélection des Formules](#2-sélection-des-formules)
3. [Gestion du Panier](#3-gestion-du-panier)
4. [Validation du Panier et Récupération du Code de Commande](#4-validation-du-panier-et-récupération-du-code-de-commande)
5. [Visualisation de la Commande](#5-visualisation-de-la-commande)
6. [Tableau de Bord Admin](#6-tableau-de-bord-admin)

---

## 1. Visualisation des Piscines Disponibles

### Étapes :
1. Accédez à la page des piscines en cliquant sur le lien **Piscines** dans le menu principal.
2. La page affiche une liste des piscines disponibles avec leurs détails tels que l'emplacement, les horaires d'ouverture, et les tarifs.

---

## 2. Sélection des Formules

### Étapes :
1. Accédez à la page des formules en cliquant sur le lien **Formules** dans le menu principal.
2. La page affiche une liste des formules disponibles avec leurs noms et leurs prix.
3. Pour ajouter une formule au panier, cliquez sur le bouton **Ajouter au Panier** sous la formule souhaitée.

---

## 3. Gestion du Panier

### Étapes :
1. Après avoir ajouté une formule, accédez à la page du panier en cliquant sur le lien **Panier** dans le menu principal.
2. La page affiche la liste des formules ajoutées avec leurs noms et leurs prix.
3. Si vous souhaitez supprimer une formule du panier, cliquez sur le bouton **Supprimer** à côté de la formule.
4. Pour valider le panier, cliquez sur le bouton **Valider le Panier**.

---

## 4. Validation du Panier et Récupération du Code de Commande

### Étapes :
1. Une fois que vous avez cliqué sur le bouton **Valider le Panier**, un code unique de commande est généré et affiché sur la page de confirmation.
2. Notez ce code car il vous sera nécessaire pour visualiser votre commande ultérieurement.

---

## 5. Visualisation de la Commande

### Étapes :
1. Accédez à la page de validation de commande en cliquant sur le lien **Valider Code** dans le menu principal.
2. Entrez le code de commande reçu lors de la validation du panier.
3. Cliquez sur le bouton **Valider** pour afficher les détails de votre commande.

---

## 6. Tableau de Bord Admin

### Fonctions :
1. **Ajouter/Modifier des Formules** :
    - Accédez au tableau de bord admin en cliquant sur le lien **Admin**.
    - Pour ajouter une nouvelle formule, cliquez sur le lien **Ajouter une nouvelle formule** et remplissez le formulaire.
    - Pour modifier une formule existante, sélectionnez la formule dans le menu déroulant, puis cliquez sur le bouton **Modifier**.

2. **Visualiser Toutes les Commandes** :
    - Depuis le tableau de bord admin, cliquez sur le bouton **Voir Toutes les Commandes**.
    - La page affiche une liste de toutes les commandes passées sur le site.

---

# Guide d'Installation du Site

## Prérequis

- [XAMPP](https://www.apachefriends.org/index.html)
- [Node.js](https://nodejs.org/)

## 1. Installation de XAMPP

1. Téléchargez et installez XAMPP depuis le site officiel.
2. Lancez le panneau de contrôle XAMPP.
3. Démarrez les modules Apache et MySQL.

## 2. Configuration de la Base de Données

1. Ouvrez votre navigateur et accédez à [http://localhost/phpmyadmin](http://localhost/phpmyadmin).
2. Créez une nouvelle base de données nommée `piscine_bts`.
3. Importez le fichier SQL de votre base de données dans `phpMyAdmin` :
   - Cliquez sur l'onglet **Import**.
   - Sélectionnez le fichier SQL à partir de votre ordinateur.
   - Cliquez sur **Exécuter** pour importer le schéma et les données de la base.

## 3. Installation de Node.js

1. Téléchargez et installez Node.js depuis le site officiel.
2. Ouvrez un terminal ou une invite de commandes.

## 4. Installation des Modules Node.js

1. Accédez au répertoire de votre projet dans le terminal :
   ```bash
   cd path/to/your/project
2. Installer les dépendances nécessaires en éxécutant:
    ```bash
   npm install
    
## 5. Lancement de l'application

1. Démarrer votre application Node.js:
   ```bash
   node app.js
2. Accèder à http://localhost:3000 dans votre navigateur pour voir le site en action.
