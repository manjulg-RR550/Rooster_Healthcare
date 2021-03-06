import 'package:flutter/material.dart';
import 'package:health/homescreen/main_homescreen.dart';

class BecomingCust extends StatefulWidget {
  @override
  _Dropp createState() => _Dropp();
}

class _Dropp extends State<BecomingCust> {
  String item1, item2, item3;
  List listItem = [
    "AAC",
    "COP",
    "MOM",
    "PRE",
    "HIC",
    "CQI",
    "ROM",
    "FMS",
    "HRM",
    "IMS"
  ];
  List name = ["aaa", "bbb", "ccc"];
  List company = ["NABH", "NACL"];

  String _val;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final idcontroller = new TextEditingController();

  void _onchange(String value) {
    setState(() {
      _val = value;
    });
  }

  final Color primaryColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Quality Accrediations Pre-Existing Before Becoming Customer",
            style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Center(child: Form(
        key: formKey,
        child: Padding(
              padding: const EdgeInsets.all(20.0),
            
        child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text("Accrediation Code: "),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(12)),
              child: DropdownButton(
                dropdownColor: primaryColor,
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
              labelText: "Accrediation name: ",
            ),
            validator:(value)
            {
              if(value.isEmpty)
              {
                return "name required";
              }
              else if(value.length<3)
              {
                return "name must have more than 3 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              return null;
            }
          ),
          SizedBox(height: 15),
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: Icon(Icons.note),
              labelText: "Accrediation note: ",
            ),
            validator:(value)
            {
              if(value.isEmpty)
              {
                return "note required";
              }
              else if(value.length<3)
              {
                return "note must have more than 3 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
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
      ),
        )
      ),)
    );
  }
}
