import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temp_app/temp_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temp App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Temp App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _resultado = 0;
  TextEditingController _controller = new TextEditingController();

  void _toFahrenheit(double v) {
    setState(() {
      _resultado = v * 1.8 + 32;
    });
  }

  void _toKelvin(double v) {
    setState(() {
      _resultado = v + 273;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
                child: Image(
                    image: AssetImage('lib/assets/images/temp_icon.png'))),
            Text(
              'Digite o valor da temperatura em Celsius',
              style: TextStyle(fontSize: 15.0),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                            color: Colors.amber, style: BorderStyle.solid)),
                    hintText: 'Temperatura em ºC...'),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: _controller,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            TempButton(
              title: 'Celsius para Fahrenheit',
              onPressed: () {
                _toFahrenheit(double.parse(_controller.text));
              },
              key: Key('btnCF'),
            ),
            TempButton(
              title: 'Celsius para Kelvin',
              onPressed: () {
                _toKelvin(double.parse(_controller.text));
              },
              key: Key('btnCK'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$_resultado',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
