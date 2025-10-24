#!/bin/bash
# --- Déploiement simple R.Tyx vers VPS ---

# Configuration
REMOTE_HOST="vps-dev"
REMOTE_PATH="/webdir/rtyx/www"
LOCAL_PATH="/media/alain-dessi/works/alain/development/web/rtyx-web-underconstruct"

echo "🚀 Déploiement du site R.Tyx vers $REMOTE_HOST ..."
scp -r "$LOCAL_PATH"/* "$REMOTE_HOST:$REMOTE_PATH"

echo "✅ Transfert terminé !"