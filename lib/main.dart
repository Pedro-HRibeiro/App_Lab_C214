import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Soma',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Calculadora de Soma'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int resultado = 0;
  final _num1 = TextEditingController();
  final _num2 = TextEditingController();

  void Soma() {
    setState(() {
      int num1 = int.parse(_num1.text);
      int num2 = int.parse(_num2.text);
      resultado = num1 + num2;
    });
  }

  @override
  void dispose() {
    _num1.dispose();
    _num2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _num1,
              decoration: InputDecoration(
                hintText: 'Primeiro numero: '
),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _num2,
              decoration: InputDecoration(
                hintText: 'Segundo numero: '
              ),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: Soma,
              child: Text('Somar'),
            ),
            Text(
              'Resultado: $resultado',
            ),
          ],
        ),
      ),
    );
  }
}
