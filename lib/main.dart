import 'package:flutter/material.dart';

String name;

void main() => runApp(MaterialApp(home: MainWidget()));

class MainWidget extends StatelessWidget {
  MainWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("I'm poor app"),
        backgroundColor: Colors.lime,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            tooltip: 'Pasar a la siguiente página',
            onPressed: () {
              openNextPage(context);
            },
          )
        ],
      ),
      body: Center(
        child: Text(
            "Presiona el botón de arriba a la derecha para pasar a la siguiente página"),
      ),
    );
  }
}

void openNextPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I'm poor app"),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: Image(
          image: AssetImage('assets/images/rocketleague.png'),
        ),
      ),
    );
  }));
}
