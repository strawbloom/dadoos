# Dadoos

A simple, playful dice rolling app built with Flutter. Tap a die or the button to tumble two dice with a quick shake-and-settle animation.

> Live demo: **https://kevingcm.github.io/dadoos/** (auto-deployed from `master`)
>
> Screenshot / GIF: _add `docs/preview.gif` and reference it here._

## Features

- Two-dice roll with a damped shake animation (`AnimationController`)
- Custom Material theme centered on a soft pink palette
- Google Fonts (`Sour Gummy`) typography
- Splash screen via `flutter_native_splash`
- Runs on Android, iOS, Web, Windows, macOS, and Linux

## Project Structure

```
lib/
├── main.dart            - Entry point
├── app.dart             - App configuration, theme, color palette
├── models/
│   └── dice.dart        - Dice logic (injectable Random for tests)
└── screens/
    └── home_screen.dart - Home screen UI + roll animation

test/
├── dice_test.dart        - Unit tests for the Dice model
└── home_screen_test.dart - Widget tests for HomeScreen
```

## Getting Started

```bash
flutter pub get
flutter run
```

## Tests

```bash
flutter test
flutter analyze
```

## Deployment

Auto-deployed to GitHub Pages on every push to `master` via [`.github/workflows/deploy.yml`](.github/workflows/deploy.yml).

To deploy manually:

```bash
flutter build web --release --base-href "/dadoos/"
```

The output lands in `build/web/`. Push that folder to a `gh-pages` branch, or drop it on [Netlify](https://app.netlify.com/drop) for a one-off preview.

## Built With

- [Flutter](https://flutter.dev)
- [google_fonts](https://pub.dev/packages/google_fonts)
- [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)

## Author

**Kevin Gabriel** — [@kevingcm](https://github.com/kevingcm)

## License

[MIT](LICENSE)
