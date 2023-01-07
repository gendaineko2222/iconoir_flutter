# Iconoir

[iconoir](https://iconoir.com/) port to Flutter. This package renders the icons as SVG
pictures.

## Usage

```dart
class MyExampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Iconoir(
      IconoirIcons.addToCart,
      color: Colors.blue,
      size: 30,
    );
  }
}
```

## Install

Add `iconoir_icons` package into your `pubspec.yaml`.

```yaml
dependencies:
  iconoir_icons: # Latest version
```

You can also run `flutter pub add iconoir_icons` to quickly add latest version from your CLI.

## Development

Run source code generation to create `icons.dart` file with named constructor for every icon.

```
dart tool/generator.dart
```
