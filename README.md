# Projet_Capteur_FOURNIER_FROTTIER
Acquisition chain to characterize graphite sensor

# Sommaire

1) Introduction
2) Code Arduino
3) Shield PCB
4) APK
5) Banc de test et mesures
6) Pistes d'amélioration
7) Contacts

# Introduction

Le capteur de déformation est constitué d'un morceau de papier sur lequel on dépose du graphite en coloriant avec un crayon à papier. Les particules de graphite forment alors un système granulaire. Ainsi lorsqu'on plie légèrement le papier, les particules s'éloignent ou se rapprochent les unes des autres (dépend du sens dans lequel on le plie). Dans le cas d'une compression (rapprochement des particules) l'effet tunnel fait qu'il y a plus d'électrons qui arrivent à passer d'une particule à une autre. Dans le cas d'une extension (éloignement des particules) c'est l'inverse qui se produit. Ainsi dans un cas la résistance diminue et dans l'autre cas elle augmente. Nous pouvons mesurer cette variation de résistance en mesurant la variation de courant. Ce capteur étant passif, il faut le conditionner. Pour cela nous introduisons un cirduit transimpédance qui amplifie le courant mesuré et le convertit en tension. C'est cette tension qui est ensuite lue par l'entrée analogique de la carte Arduino.

# Code Arduino

Le code Arduino réalise la lecture analogique du signal amplifié sur l'entrée analogique A0 et convertit les valeurs analogiques en valeurs numériques (octets).
Il permet également l'envoie des données octet par octet au module Bluetooth HC05. Sachant que ces données sont ensuite transmises par Bluetooth à l'APK, nous
avons pris soin d'imposer la fréquence d'envoie des données (envoie d'un octet toutes les 200 ms, fréquence correspondant à celle de la clock de l'APK). Ainsi 
chaque octet envoyé est directement lu par l'APK sans delay.
Ce code réalise aussi la communication avec l'écran OLED. Notez que pour cela il vous faut ajouter les librairies suivantes à votre code : Adafruit_GFX.h et
Adafruit_SSD1306.h. Vous aurez aussi besoin de l'adresse d l'OLED (ici 0x3C). Notre fonction void LED() gère l'affichage de la tension Vadc en Volt (lue sur l'entrée A0)
ainsi que le calcul et l'affichage de la resistance du capteur en MOhm.

# Shield PCB

Le shield a été réalisé sur le logiciel Kicad puis imprimé à l'Atelier d'électronique de l'INSA Toulouse. Nous y avons mis un circuit transimpédance afin d'amplifier
le courant généré par le capteur et le convertir en tension. Nous y avons également pluggé le module Bluetooth HC05, l'écran OLED et un servomoteur (voir partie 5
Banc de test et mesures).

# APK

L'application Android a été réalisée via le site web MIT App Inventor. Elle communique avec le module Bluetooth de votre smartphone pour se connecter au module HC05
et recevoir des données. Pour cela, l'utilisateur n'a qu'à cliquer sur "Bluetooth" et choisir le module HC05 parmi la liste qui s'affiche. Une fois la connexion
établie, l'application lit les données reçues par le smartphone et les affiche. On voit donc s'afficher à l'écran la valeur numérique de la tension Vadc en Volt et sa 
courbe sur un graphique. L'application calcule également la valeur de la résistance du capteur à partir de Vadc et des valeurs des résistances du montage transimpédance.
La valeur numérique de la résistance est ensuite affichée sur l'écran.

# Banc de test et mesures

Afin d'échantillonner notre capteur, nous avons conçu un banc de test permettant d'obtenir la résistance du capteur pour un grand nombre de courbures différentes. 
Le banc a été conçu sous SoliWorks et imprimé en PLA à l'aide d'une imprimante 3D. En faisant tourner un servomoteur contrôlé par le programme Arduino, nous pouvons ainsi
mesurer la résistance du capteur pour des angles de courbure précis et un grand nombre de fois. En laissant le moteur faire des va-et-vient plusieurs minutes nous nous retrouvons
rapidement avec plusieurs milliers de points dans le Serial Monitor. Il suffit ensuite de copier ces données dans un nouveau fichier texte dans le même dossier que le programme Python.
En modifiant le nom du fichier texte à traîter dans le code puis en l'exécutant on obtient un nuage de point des valeurs de résistance en fonction de l'angle de courbure. 
On observe que pour un certain interval d'angle, la résistance décroit linéairement avec la déformation (voir courbes dans la datasheet). A noter
que le type de graphite (2H, 2B, HB ...) influence la variation de résistance.

# Limites et pistes d'améliorations

La principale limite de ce capteur est qu'il a une zone de non déterioration très restreinte (dépend du type de graphite mais généralement pas plus de 45°). 
Il va fonctionner pour de faibles déformations seulement. Si la déformation est trop importante, on endommage le capteur et la résistance ne varie plus linéairement.
Un autre problème est qu'il est très difficile d'obtenir un signal stable. Même en maintenant la déformation constante, la résistance varie et on n'obtient jamais
les mêmes valeurs d'une acquisition à une autre. C'est pour cette raison que nous avons fait un grand nombre de mesures. Le capteur est trop sensible et le courant 
mesuré dépend de trop de paramètres (l'expérimentateur, l'épaisseur de graphite, l'humidité, la pression, le contact des broches métalliques ...).
Enfin on est limité par la résistance de gain du montage transimpédance. Pour certains types de graphite, le signal observé est trop faible, alors que pour d'autres, il 
sature. Une piste d'amélioration serait de mettre un connecteur sur le shield à la place de la résistance de gain, afin de pouvoir changer facilement la résistance et
ainsi adapter le rapport d'amplification.

# Contacts

Ce projet a été réalisé par 2 étudiants de département Génie Physique de l'INSA Toulouse :
Théo Frottier : tfrottie@etud.insa-toulouse.fr
Tom Fournier : tfournie@etud.insa-toulouse.fr



   



