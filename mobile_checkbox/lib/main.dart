
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(checkbox());
class checkbox extends StatefulWidget {
  @override
  _checkboxState createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  Map<String, bool> foods = {
    'Khmer food': false,
    'Thai food': false,
    'Laos food': false,
    'China food': false,
    'Indian food': false,
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Checkbox"),
          centerTitle: true,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 30.0),
              child: Icon(Icons.send),
            ),
          ],
        ),
        body: ListView(
          children: foods.keys.map( (String key) {//keys will បោះ isvalue to key is false or ture 
            return Card(
              child: CheckboxListTile(
                title: Text(key),
                value: foods[key],
                activeColor: Colors.redAccent,
                secondary: Icon(Icons.edit, color: Colors.redAccent,),
                onChanged: (bool food){
                  setState(() {//if you click, it is ture or changed
                   foods[key] = food; 
                  });
                },
              ),
            );
          }).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}