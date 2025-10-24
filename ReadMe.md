# R.Tyx – Le 1er réseau commercial 100 % local

## 🧭 Présentation
**R.Tyx** est un projet de site vitrine simple en HTML/CSS destiné à présenter l’application mobile du réseau commercial local.  
Le site met en avant les valeurs de proximité et de visibilité locale, ainsi que les liens vers les boutiques mobiles (Google Play / App Store).

---

## 🗂️ Structure du projet
```
/webdir/rtyx/
└── www/
    ├── index.html          # Page d'accueil principale
    ├── css/
    │   └── main.css       # Feuille de styles principale
    ├── fonts/
    │   ├── Poppins-Regular.woff2
    │   └── Poppins-Regular.woff
    ├── imgs/
    │   ├── logo_rtyx_hd.webp
    │   ├── googleplay.svg
    │   ├── appstore.svg
    │   ├── facebook.svg
    │   ├── instagram.svg
    │   ├── tiktok.svg
    │   ├── favicon.svg
    │   └── og-image-rtyx.webp
    └── favicon.ico
```

---

## ⚙️ Configuration Apache
**VirtualHost :**
```apache
<VirtualHost *:80>
    ServerName r-tyx.com
    ServerAlias www.r-tyx.com
    DocumentRoot /webdir/rtyx/www

    <Directory /webdir/rtyx/www>
        Options -Indexes +FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/rtyx_error.log
    CustomLog ${APACHE_LOG_DIR}/rtyx_access.log combined
</VirtualHost>
```

Active le site puis recharge Apache :
```bash
sudo a2ensite rtyx.local.conf
sudo systemctl reload apache2
```

---

## 🌐 Référencement & Meta
Les balises SEO et Open Graph sont intégrées dans le `<head>` du fichier `index.html` :
- **Meta description & keywords**
- **Open Graph (Facebook, LinkedIn, Messenger)**
- **Twitter Card**
- **Favicon et couleur du thème**

Image de partage :  
`/imgs/og-image-rtyx.webp` (1200 × 630 px)

---

## 📱 Badges de téléchargement
Les boutons Google Play et App Store sont les versions **officielles SVG** issues des guidelines Google & Apple.

---

## 💡 Police
Le site utilise la police **Poppins Regular (400)** intégrée localement pour éviter toute dépendance externe (Google Fonts).

---

## 🧩 Licence / Droits
Tous les éléments graphiques et textes appartiennent à **R.Tyx**.  
Utilisation, duplication ou diffusion interdites sans autorisation préalable.

---

© 2025 R.Tyx – Tous droits réservés