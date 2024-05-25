import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contenedores',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 7, 224, 39)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Contenedores - Emmanuel Escobedo - IDGS901'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [0.3, 1],
            colors: [Colors.green, Colors.black],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    child: Text("Contenedor N°1"),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.centerRight,
                        radius: 0.8,
                        colors: [Colors.green, Colors.black],
                      ),
                    ),
                    child: Text("Contenedor N°2"),
                  ),
                  InkWell(
                    onTap: () {
                      print("Clic corto");
                    },
                    onLongPress: () {
                      print("Clic Largo");
                    },
                    onDoubleTap: () {
                      print("Doble Clic");
                    },
                    child: Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 5),
                        image: DecorationImage(
                          image: AssetImage("../assets/hamburguesa.png"),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10,
                            offset: Offset(-5, 5),
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                      alignment: Alignment.bottomLeft,
                      child: Text("Contenedor N°3"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 75,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 209, 27, 106),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepOrange,
                          blurRadius: 30,
                          spreadRadius: 5.0,
                          offset: Offset(10,25)
                        )
                      ],
                    ),
                    child: const Text("Contenedor N°4"),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(255, 6, 65, 95), width: 5),
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: NetworkImage('https://th.bing.com/th/id/OIP.OPGHt8tRpBOvsRiOdbqcxwHaHa?rs=1&pid=ImgDetMain'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: InkWell(
                      onDoubleTap: () {
                        final mensaje = SnackBar(content: Text('Doble Clic en el Logo UTL'));
                        ScaffoldMessenger.of(context).showSnackBar(mensaje);
                      },
                    ),
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 9, 224, 224),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text('Contenedor N°6')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border(
                      right: BorderSide(
                        color: Colors.purple,
                        width: 5,
                      ),
                      bottom: BorderSide(
                        color: Colors.pinkAccent,
                        width: 3,
                      ),
                    ),
                    ),
                    child: Text('Contenedor N°7'),
                  ),
                  Container(
                    width: 100,
                    height: 75,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.orange, Colors.red],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Text('Contenedor N°8'),
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    constraints: BoxConstraints(
                      minWidth:100,
                      maxWidth:200,
                      minHeight: 100,
                      maxHeight: 200,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      border:Border.all(
                        width: 10
                      )
                    ),
                    foregroundDecoration: BoxDecoration(
                      color: Color.fromRGBO(216, 216, 167, 0.498),
                      shape: BoxShape.circle,
                    ),
                    child: Text('Contenedor N°9'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onLongPress: () {
                        final mensaje = SnackBar(content: Text('Clic largo en el contenedor N°10'));
                        ScaffoldMessenger.of(context).showSnackBar(mensaje);
                      },
                      child: Center(child: Text('Contenedor N°10')),
                  ),
                  ),
                  Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 110, 72, 29),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(9, 9),
                          blurRadius: 23,
                        ),
                      ],
                    ),
                    child: Text("Contenedor N°11"),
                  ),
                  InkWell(
                    onTap: () {
                      final mensaje = SnackBar(content: Text('Clic corto en el contenedor N°12'));
                        ScaffoldMessenger.of(context).showSnackBar(mensaje);
                    },
                    onLongPress: () {
                      final mensaje = SnackBar(content: Text('Clic largo en el contenedor N°12'));
                        ScaffoldMessenger.of(context).showSnackBar(mensaje);
                    },
                    onDoubleTap: () {
                      final mensaje = SnackBar(content: Text('Doble Clic en el contenedor N°12'));
                        ScaffoldMessenger.of(context).showSnackBar(mensaje);
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: SweepGradient(
                          colors: [Color.fromARGB(255, 240, 179, 199), Color.fromARGB(255, 233, 147, 17), Colors.yellow],
                        ),
                      ),
                      child: Text('Contenedor N°12'),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 172, 226, 220),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        final mensaje = SnackBar(content: Text('Clic corto el contenedor N°13'));
                        ScaffoldMessenger.of(context).showSnackBar(mensaje);
                      },
                      child: Center(child: Text('Contenedor N°13')),
                    ),
                  ),
                  Container(
                    child: metodoPrametros(
                      100,
                      100,
                      BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.red, Colors.green],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color:Colors.blueGrey,width: 5)
                      ),
                    ),
                  ), 
                ],
              ),
            ],
          ),
        ),
      ),     
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
Widget metodoPrametros(double width, double height, BoxDecoration decoracion) {
  return Container(
    width: width,
    height: height,
    decoration: decoracion,
    child: Text('Contenedor N°14'),
  );
}
