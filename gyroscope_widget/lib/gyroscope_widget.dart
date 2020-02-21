import 'package:flutter/widgets.dart';
import 'package:sensors/sensors.dart';

class GyroscopeWidget extends StatefulWidget {
  final Widget child;
  final double scaleMargin;

  GyroscopeWidget({
    this.child,
    this.scaleMargin
  });

  @override
  _GyroscopeWidgetState createState() => _GyroscopeWidgetState();
}

class _GyroscopeWidgetState extends State<GyroscopeWidget> {
  double gyroscopeX = 0;
  double gyroscopeY = 0;
  double multipleX = 0;
  double multipleY = 0;

  @override
  void initState() {
    super.initState();

    accelerometerEvents.listen((AccelerometerEvent event){
      setState(() {
        gyroscopeX = event.x/10 * multipleX;
        gyroscopeY = event.z/10 * multipleY;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    multipleX = MediaQuery.of(context).size.width * widget.scaleMargin;
    multipleY = MediaQuery.of(context).size.height * widget.scaleMargin;

    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Transform.scale(
        scale: 1 + widget.scaleMargin,
        origin: Offset(gyroscopeX, gyroscopeY),
        child: widget.child
      ),
    );
  }
}
