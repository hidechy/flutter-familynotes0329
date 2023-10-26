if [ "$1" == "r" ]; then
    cp -f android/app/src/release/google-services.json___release android/app/src/release/google-services.json
    fvm flutter build apk --release --dart-define="APP_ID_SUFFIX=prod" --dart-define="API_END_POINT=stg.suilog-app.com"
elif [ "$1" == "local" ]; then
    cp -f android/app/src/release/google-services.json___debug android/app/src/release/google-services.json
    fvm flutter build apk --release --dart-define="APP_NAME_PREFFIX=[dev]" --dart-define="APP_ID_SUFFIX=.dev" --dart-define="API_END_POINT=192.168.64.3"
elif [ "$1" == "api2" ]; then
    cp -f android/app/src/release/google-services.json___debug android/app/src/release/google-services.json
    fvm flutter build apk --release --dart-define="APP_NAME_PREFFIX=[dev]" --dart-define="APP_ID_SUFFIX=.dev" --dart-define="API_END_POINT=54.178.47.35:8900"
    cp -f android/app/src/release/google-services.json___release android/app/src/release/google-services.json
else
    cp -f android/app/src/release/google-services.json___debug android/app/src/release/google-services.json
    fvm flutter build apk --release --dart-define="APP_NAME_PREFFIX=[dev]" --dart-define="APP_ID_SUFFIX=.dev" --dart-define="API_END_POINT=54.249.91.33:8900"
    cp -f android/app/src/release/google-services.json___release android/app/src/release/google-services.json
fi


