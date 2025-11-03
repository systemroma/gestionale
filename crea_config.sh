#!/bin/bash

# Questo script legge i "Secrets" (che ora sono variabili d'ambiente)
# e genera il file 'firebase-config.js' che index.html usa.

echo "Sto generando firebase-config.js dai Secrets di Codespace..."

# (Ri)crea il file firebase-config.js
echo "var firebaseConfig = {" > firebase-config.js

# Scrive le variabili d'ambiente nel file con la sintassi corretta
echo "  apiKey: \"$FIREBASE_API_KEY\"," >> firebase-config.js
echo "  authDomain: \"$FIREBASE_AUTH_DOMAIN\"," >> firebase-config.js
echo "  projectId: \"$FIREBASE_PROJECT_ID\"," >> firebase-config.js
echo "  storageBucket: \"$FIREBASE_STORAGE_BUCKET\"," >> firebase-config.js
echo "  messagingSenderId: \"$FIREBASE_MESSAGING_SENDER_ID\"," >> firebase-config.js
echo "  appId: \"$FIREBASE_APP_ID\"" >> firebase-config.js

echo "};" >> firebase-config.js

echo "✅ Fatto. Il file firebase-config.js è stato creato con le tue chiavi."
