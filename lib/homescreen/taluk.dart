import 'package:flutter/material.dart';
import 'package:health/homescreen/main_homescreen.dart';

class Taluk extends StatefulWidget {
  @override
  _Dropp createState() => _Dropp();
}

final Color primaryColor = Colors.red;

class _Dropp extends State<Taluk> {
  String item1, item2, item3, item4;
  List listItem = ["001", "002", "003", "004"];
  List name = ["aaa", "bbb", "ccc"];
  List company = ["NABH", "NABL", "JCI"];
  List notes = ["aaa", "bbb", "ccc"];
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Taluk", style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Center(child: Form(
        key:formKey,
        child: Padding(
              padding: const EdgeInsets.all(20.0),
            
        child: Column(
        children: <Widget>[
          SizedBox(height: 15),
          //SizedBox(height:20),
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: Icon(Icons.note),
              labelText: "Taluk name: ",
            ),
            validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              return null;
            
            }
          ),
          SizedBox(height: 18),
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: Icon(Icons.note),
              labelText: "District name: ",
            ),
            validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              return null;
            
            }
          ),

          SizedBox(height: 18),

          RaisedButton(
            child: Text('Save', style: TextStyle(color: Colors.white)),
            onPressed: () {
              if(formKey.currentState.validate()){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
              }
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            color: primaryColor,
          ),
        ],
      ),)
      )
      )
    );
  }
}
