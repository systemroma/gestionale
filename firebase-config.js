#!/bin/bash

# Questo script legge i Secrets (che ora sono variabili d'ambiente)
# e crea il file firebase-config.js che il tuo index.html si aspetta.

echo "Sto generando firebase-config.js dai Secrets..."

# Sovrascrive o crea il file
echo "var firebaseConfig = {" > firebase-config.js

# Aggiunge le chiavi lette dalle variabili d'ambiente
echo "  apiKey: \"$FIREBASE_API_KEY\"," >> firebase-config.js
echo "  authDomain: \"$FIREBASE_AUTH_DOMAIN\"," >> firebase-config.js
echo "  projectId: \"$FIREBASE_PROJECT_ID\"," >> firebase-config.js
echo "  storageBucket: \"$FIREBASE_STORAGE_BUCKET\"," >> firebase-config.js
echo "  messagingSenderId: \"$FIREBASE_MESSAGING_SENDER_ID\"," >> firebase-config.js
echo "  appId: \"$FIREBASE_APP_ID\"" >> firebase-config.js

echo "};" >> firebase-config.js

echo "✅ firebase-config.js generato con successo."
