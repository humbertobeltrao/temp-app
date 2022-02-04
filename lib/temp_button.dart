import 'package:flutter/material.dart';

class TempButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String title;
  final Key key;

  TempButton(
      {@required this.onPressed, @required this.title, @required this.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.thermostat_outlined,
              color: Colors.amber,
            ),
            SizedBox(width: 10.0),
            Text(
              title,
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            )
          ],
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}
