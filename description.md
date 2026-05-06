# Commando Zombi

**Plate-forme :** Amstrad CPC  
**Auteur :** Nekrofage  
**Inspiré de :** Sorcerer, par salvakantero  

---

## Présentation

Commando Zombi est un jeu d'action et d'exploration développé pour l'Amstrad CPC. Vous incarnez un mercenaire solitaire qui doit explorer les couloirs d'un vaisseau spatial abandonné avant de s'enfoncer dans un cimetière mystérieux. Chaque zone regorge d'objets à collecter et de passages secrets à découvrir.

## Univers

Le jeu se déroule sur quatre niveaux interconnectés :

- **Vaisseau spatial — Niveau 1 (Map 0)** : Les premiers couloirs du vaisseau, point de départ de la mission.
- **Vaisseau spatial — Niveau 2 (Map 1)** : Les profondeurs du vaisseau, accessibles par des portes dissimulées.
- **Vaisseau spatial — Niveau 3 (Map 2)** : La zone la plus reculée du vaisseau, difficile d'accès.
- **Cimetière (Map 3)** : Au-delà du vaisseau, un cimetière inquiétant attend le mercenaire.

Les niveaux communiquent entre eux via des portes et des puits. La navigation entre les zones est au cœur du gameplay.

## Gameplay

Le joueur se déplace librement dans des environnements à base de tuiles (40×42 cases par carte). Des objets à ramasser sont dissimulés dans chaque niveau. La mission s'achève lorsque le mercenaire a accompli ses objectifs, déclenchant l'écran de fin de mission.

## Contrôles (clavier AZERTY)

| Touche | Action              |
|--------|---------------------|
| `1`    | Démarrer la partie  |
| `Z`    | Aller vers le haut  |
| `S`    | Aller vers le bas   |
| `Q`    | Aller vers la gauche|
| `D`    | Aller vers la droite|
| `G`    | Changer de carte    |
| `H`    | Pause               |
| `M`    | Musique on/off      |
| `X`    | Quitter             |

## Technique

Le jeu est développé en C et assembleur Z80 à l'aide du framework **CPCtelera**. Il tourne en mode vidéo 0 de l'Amstrad CPC (160×200 pixels, 16 couleurs). Les cartes sont compressées au format ZX7B et décompressées en mémoire à la volée pour économiser l'espace. Les sprites du mercenaire comportent 10 frames d'animation couvrant les quatre directions de déplacement.
