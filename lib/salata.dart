import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Salata());
}

class Salata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContainerChanger(),
    );
  }
}

class ContainerChanger extends StatefulWidget {
  @override
  _ContainerChangerState createState() => _ContainerChangerState();
}

class _ContainerChangerState extends State<ContainerChanger> {
  Color currentColor = Colors.red;

  void changeContainer() {
    setState(() {
      if (currentColor == Colors.red) {
        currentColor = Colors.blue;
      } else {
        currentColor = Colors.red;
      }
    });
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                    IconButton
                    (onPressed: changeContainer,
                    icon: const FaIcon(FontAwesomeIcons.chevronLeft)
                ),

                Container(
                  color: currentColor,
                  width: 300,
                  height: 660,
                  child: Center(
                    child: Text('Container 2'),
                  ),
                ),
                    Expanded(child: 
                    IconButton
                    (onPressed: changeContainer,
                    icon: const FaIcon(FontAwesomeIcons.chevronRight)
                     ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
