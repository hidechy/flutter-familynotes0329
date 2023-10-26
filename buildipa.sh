if [ "$1" == "r" ]; then
    fvm flutter build ipa --release --dart-define="API_END_POINT=54.249.91.33:8900"
else
    fvm flutter build ipa --release --dart-define="APP_NAME_PREFFIX=[dev]" --dart-define="APP_ID_SUFFIX=.dev" --dart-define="API_END_POINT=54.249.91.33:8900"
fi


