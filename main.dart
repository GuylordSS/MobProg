import 'package:flutter/material.dart';

void main() {
  runApp(const Sagun());
}

class Sagun extends StatefulWidget {
  const Sagun({super.key});

  State<Sagun> createState() => _Sagun();
}

class _Sagun extends State<Sagun> {

  List<String> names = ['Guylord Sebastian Sagun','Beverly Sagun','Heyward Sagun'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.add),
            title: Text('ListView Builder'),
          ),
          body: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {

                String varvi = names[index].length.toString();

                return ListTile(
                  leading: Icon(Icons.person),
                  title: Text(names[index]),
                  subtitle: Text('$varvi Letters'),
                );
              }
          )
      ),
    );

  }
}