import 'package:flutter/material.dart';
import 'package:health/homescreen/main_homescreen.dart';

class ServicesFocus extends StatefulWidget {
  @override
  _Dropp createState() => _Dropp();
}

class _Dropp extends State<ServicesFocus> {
  String item1, item2, item3;
  List listItem = ["001", "002", "003", "004"];
  List name = ["aaa", "bbb", "ccc"];
  List company = ["NABH", "NACL"];
  final Color primaryColor = Colors.red;
  
GlobalKey<FormState> formKey=GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text("Services & Focus", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.red),
      body:Center(
        child:Form(
          key:formKey,
          child: Padding(
              padding: const EdgeInsets.all(20.0),
        
          child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text("Services and Focus Code: "),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(12)),
              child: DropdownButton(
                //dropdownColor: Colors.,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36,
                isExpanded: true,
                underline: SizedBox(),
                style: TextStyle(color: Colors.black, fontSize: 20),
                value: item1,
                onChanged: (newValue) {
                  setState(() {
                    item1 = newValue;
                  });
                },
                items: listItem.map((valueItem) {
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Text(valueItem),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(height: 15),
          //SizedBox(height:20),
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: Icon(Icons.note),
              labelText: "Service and Focus name: ",
            ),
            validator:(value)
            {
              if(value.isEmpty)
              {
                return "name required";
              }
              return null;
            }
          ),
          SizedBox(height: 15),
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: Icon(Icons.note),
              labelText: "Service and Focus note: ",
            ),
            validator:(value)
            {
              if(value.isEmpty)
              {
                return "note required";
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
            color: Colors.red,
          ),
        ],
      ),
        ),)
      )
    );
    
  }
}
