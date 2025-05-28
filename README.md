# ✨ Dreambnb - Louez vos rêves les plus fous

Un projet collaboratif réalisé dans le cadre de la formation Le Wagon avec une équipe de camarades passionnés.

## 🎯 Objectif
Développer une plateforme web fantaisiste permettant aux utilisateurs de louer des "rêves" pour s'évader du quotidien - une expérience de location entre particuliers... mais pour des expériences oniriques ! 🌙

## 🚧 Statut
Projet d'équipe développé pour mettre en pratique l'ensemble des notions vues pendant la formation Le Wagon.

## 🛠️ Stack technique
- **Ruby on Rails** (backend)
- **JavaScript** (frontend interactif)
- **Cloudinary** (v2.5.1) pour la gestion des images de rêves
- **Mapbox GL JS** (v3.1.2) pour la géolocalisation des rêves
- **PostgreSQL** pour la base de données
- **Bootstrap** & **Sass** pour le design responsive

## 🔍 Fonctionnalités principales
- 💭 **Création de rêves** avec descriptions immersives
- 🔎 **Recherche géolocalisée** de rêves disponibles
- 📅 **Système de réservation** pour vivre vos rêves
- ⭐ **Évaluations et avis** sur les expériences oniriques
- 🗺️ **Cartographie interactive** avec Mapbox
- 📱 **Interface responsive** adaptée à tous les écrans
- 📸 **Galerie d'images** optimisée via Cloudinary

## 🏗️ Architecture
- Modèle MVC de Ruby on Rails
- Entités principales : `Dream`, `User`, `Booking`, `Review`
- API REST pour les interactions frontend
- Authentification utilisateur sécurisée avec Devise
- Géolocalisation avec Geocoder et Mapbox

## 👁️ Aperçu visuel
Interface utilisateur immersive permettant de parcourir une galerie de rêves avec visualisation cartographique et détails enrichis.

## 💻 Technologies utilisées
- **Framework**: Ruby on Rails
- **Frontend**: JavaScript ES6, HTML5, CSS3/Sass
- **Cartographie**: Mapbox GL JS, Geocoder
- **Médias**: Cloudinary SDK
- **Base de données**: PostgreSQL
- **Authentication**: Devise
- **Base de développement**: Template Rails du Wagon coding bootcamp

## 🚦 Comment utiliser
```shell script
# Cloner le dépôt
git clone https://github.com/username/dreambnb.git

# Installer les dépendances
bundle install
npm install

# Configurer la base de données
rails db:create db:migrate db:seed

# Configurer les variables d'environnement
# Ajouter vos clés API Mapbox et Cloudinary

# Lancer le serveur
rails server
```


## 🌟 Fonctionnalités spéciales
- 🎨 **Upload d'images** pour illustrer vos rêves
- 🌍 **Géolocalisation** pour trouver des rêves près de chez vous
- 💫 **Interface ludique** pour une expérience utilisateur magique
- 🔐 **Gestion des utilisateurs** avec profils personnalisés

## 🔮 Perspectives d'évolution
- Système de catégories de rêves (aventure, détente, fantasy...)
- Chat en temps réel entre rêveurs
- Système de notation par critères (originalité, réalisme, etc.)
- Application mobile pour rêver partout
- Intégration de réalité virtuelle pour preview des rêves

---

**Développé avec créativité et beaucoup d'imagination au Wagon 🚂💭✨**