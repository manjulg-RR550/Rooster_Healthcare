import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Businessreadapi extends StatefulWidget
{
  @override
  _ScreenwelcomeState createState() => _ScreenwelcomeState();
}
class _ScreenwelcomeState extends State<Businessreadapi> {
  bool isLoading=false;
  List users = [];
  var first="https://rooster-healthcare.herokuapp.com/api/table/District";

  @override
  void initState() {
    super.initState();
    this.fetchUser();
  }
Future fetchUser() async {
    setState(() {
      isLoading = true;
    });
    final http.Response response = await http.get(first);
    print(response.body);
      final items = json.decode(response.body);
      setState(() {
        this.users=items['a'];
        isLoading = false;
      });
  }

@override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("District"),
        backgroundColor: Colors.pink[400],
        leading: IconButton( 
              icon: Icon(Icons.map),
              tooltip: 'District',
            )
      ),
      body: Center(
        child: ListView.builder(
          itemCount:this.users.length,
          itemBuilder: (BuildContext context,index)
        {
          return getCard(users[index]);
    
   print(users[index]);
        },
      )
      )
     
    );
  } 
Widget getCard(item)
{
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  
  //var capital=item['capital'];
  //var code3=item['Alpha_3_code'];
  var code=item['Alpha_2_code'];
  var statecode=item['state_code'];
  var name=item['district_name'];
  print(code);
  return Card(
    color: Colors.pink[100],
      child: Padding(
              padding: const EdgeInsets.all(30.0),
                child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                               children: <Widget>[
                                 Container(
                                   width: width*0.5,
                                   height:height*0.08,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       Row(
                                          children:[
                                            Text("Alpha 2 code: ",style: TextStyle(fontSize: 16),),
                                            Text(code.toString(),style: TextStyle(fontSize: 16),),
                                          ]
                                      ), 
                                      Row(
                                          children:[
                                            Text("State code: ",style: TextStyle(fontSize: 16),),
                                            Text(statecode.toString(),style: TextStyle(fontSize: 16),)
                                          ]
                                      ),
                                      Row(
                                          children:[
                                            Text("District name: ",style: TextStyle(fontSize: 16),),
                                            Text(name.toString(),style: TextStyle(fontSize: 16),)
                                          ]
                                      ), 
                                       ],
                                   ),
                                 ),
                                 IconButton( icon: Icon(Icons.edit, color: Colors.red,),),
                                IconButton( 
                                  icon: Icon(Icons.delete, color: Colors.black,),
                                  
                                  
                                )
                               
                               ]
  )
                            
  )
  );
  }
}
//}

