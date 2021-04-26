import 'package:flutter/material.dart';
import 'package:health/homescreen/districtreadapi.dart';
import 'package:health/homescreen/main_homescreen.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';


class District extends StatefulWidget {
  @override
  _Dropp createState() => _Dropp();
}
final Color primaryColor = Colors.pink[400];
GlobalKey<FormState> formKey=GlobalKey<FormState>();
class _Dropp extends State<District> {

  bool isLoading=false;
  List users = [];


  String item1, item2, item3, item4;
  List listItem = ["001", "002", "003", "004"];
  List name = ["aaa", "bbb", "ccc"];
  List company = ["NABH", "NABL", "JCI"];
  List notes = ["aaa", "bbb", "ccc"];
  var code=TextEditingController();
  var statecode=TextEditingController();
  var district=TextEditingController();


   insert() async{
    var url= await http.post("https://rooster-healthcare.herokuapp.com/api/ajax/insert/District",
    body:{'Alpha_2_code':code.text,'state_code':statecode.text,'district_name':district.text},
    //headers:{content-Type:'x-access-tokens'}
    );
    return url;
    
  }

  Future delete()async{
    var res=await http.delete("https://rooster-healthcare.herokuapp.com/api/ajax/delete/District/2");
    final items = json.decode(res.body);
    setState(() {
        this.users=items['a'];
      });
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("District", style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child:Form(
          key:formKey,
          child: Padding(
              padding: const EdgeInsets.all(20.0),
            
          child:Column(
        children: <Widget>[SizedBox(height: 10),
                Text("Alpha 2 code: ",style:(TextStyle(fontSize:17)),),
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
                        labelText: "Eg:IN",
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
                Text("District name: ",style:(TextStyle(fontSize:17)),),
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
                        labelText: "Eg:Tiruppur",
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
                Text("State Code: ",style:(TextStyle(fontSize:17)),),
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
                
                SizedBox(height: 20),
                
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
          RaisedButton(
            child: Text('Display', style: TextStyle(color: Colors.white)),
            onPressed: () {
              
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Businessreadapi()));
              
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            color: primaryColor,
          ),
            ]
          )
        ],
      ),
        )
      )
      )
      
    );
  }
  
}

