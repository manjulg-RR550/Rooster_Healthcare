import 'package:flutter/material.dart';
import 'package:health/homescreen/main_homescreen.dart';

class States extends StatefulWidget {
  @override
  _Dropp createState() => _Dropp();
}
GlobalKey<FormState> formKey=GlobalKey<FormState>();
final Color primaryColor = Colors.pink[400];

class _Dropp extends State<States> {
  String item1, item2, item3, item4;
  List listItem = ["001", "002", "003", "004"];
  List name = ["aaa", "bbb", "ccc"];
  List company = ["NABH", "NABL", "JCI"];
  List notes = ["aaa", "bbb", "ccc"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("State", style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
      
        child:Form(
          key:formKey,
          child: Padding(
              padding: const EdgeInsets.all(20.0),
            
          child:Column(
        children: <Widget>[SizedBox(height: 10),
                Text("State name: ",style:(TextStyle(fontSize:17)),),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "Eg:TamilNadu",
                        labelStyle: TextStyle(fontSize:12),
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
                  ),
                ),
                SizedBox(height: 20),
                Text("State code: ",style:(TextStyle(fontSize:17)),),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 16),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink, width: 1),
                        borderRadius: BorderRadius.circular(12)),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        icon: Icon(Icons.short_text),
                        labelText: "Eg:TN",
                        labelStyle: TextStyle(fontSize:12),
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
                  ),
                ),
                SizedBox(height: 10),
                Text("State Capital: ",style:(TextStyle(fontSize:17)),),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "Eg:Chennai",
                        labelStyle: TextStyle(fontSize:12),
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
                  ),
                ),
                Text("Country name: ",style:(TextStyle(fontSize:17)),),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "Eg:India",
                        labelStyle: TextStyle(fontSize:12),
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
                  ),
                ),
                
                SizedBox(height: 20),
                

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
      ),
        )
      )
      )
      
    );
  }
}
