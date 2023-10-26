#!/bin/sh
cp -f android/app/src/release/google-services.json___release android/app/src/release/google-services.json
fvm flutter build appbundle --release --dart-define="APP_ID_SUFFIX=prod" --dart-define="API_END_POINT=suilog-app.com"
