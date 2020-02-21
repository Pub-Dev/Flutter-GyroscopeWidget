# Flutter Gyroscope Widget!

Hey guys!

This library will allow you to move a little bit your widgets when you rotate your mobile phone.

## Getting Start
add in your pubspec.yaml
```dart
dependencies:
  gyroscope_widget: ^1.0.0
```
in your dart file, you can use like that.
```dart
Widget build(BuildContext context) {
	return Scaffold(
		body: Container(
			width: double.infinity,
			height: double.infinity,
			child: GyroscopeWidget(
				scaleMargin: 0.2,
				child: Image.network('https://picsum.photos/250?image=10',
					height: double.infinity,
					width: double.infinity,
					fit: BoxFit.fill,
				),
			),
		),
	);
}
```

## Example

![](/images/gyroscope.gif)

![](/images/mobile.gif)

## Documentation

[GitHub Documentation](https://github.com/Dev-Pub/Flutter-Gyroscope-Widget)