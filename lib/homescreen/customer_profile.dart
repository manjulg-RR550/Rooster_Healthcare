import 'package:flutter/material.dart';
import 'package:health/homescreen/main_homescreen.dart';
class Customerprofile extends StatefulWidget {
  @override
  _Dropp createState() => _Dropp();
}

final Color primaryColor = Colors.red;

class _Dropp extends State<Customerprofile> {
  
  @override
  Widget build(BuildContext context) {
      GlobalKey<FormState> formKey=GlobalKey<FormState>();
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title:
              Text("Customer Profile", style: TextStyle(color: Colors.white)),
          backgroundColor: primaryColor,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
        //child:SingleChildScrollView(
      child:Column(
        children: <Widget>[
          Form(
            key:formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.business_center_rounded),
                    labelText: "Business_Registration_No: ",
                    
                  ),
                  validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>10)
              {
                return "must less than 10 characters";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  
                  decoration: InputDecoration(
                    icon: Icon(Icons.business),
                    labelText: "Business_Registration_Name: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>20)
              {
                return "must be less than 20 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "Alpha_2_Code: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length<2)
              {
                return "must be 2 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              else if(value.contains(RegExp(r'[a-z]')))
              {
                return "only capital letters allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "State_code: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length<2)
              {
                return "must be 2 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              else if(value.contains(RegExp(r'[a-z]')))
              {
                return "only capital letters allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "District_name: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>15)
              {
                return "must be less than 15 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "Business_Working_Address: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>50)
              {
                return "must be less than 50 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Full Name: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>20)
              {
                return "must be less than 20 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Calling Name: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>20)
              {
                return "must be less than 20 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Contract status name: ",
                  ),
                   validator:(value)
            {
              if(value.isEmpty)
              {
                return "This field is empty";
              }
              else if(value.length>20)
              {
                return "must be less than 20 characters";
              }
              else if(value.contains(RegExp(r'[0-9]')))
              {
                return "only alphabets allowed";
              }
              return null;
            
            }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: "Email ID: ",
                  ),
                  validator: (value) {
          if (value.isEmpty) {
            return "This field is empty";
          }
          return value.contains('@') && value.contains('.')
              ? null
              : "Invalid Email Id.";
        },
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  
                  decoration: InputDecoration(
                    icon: Icon(Icons.local_phone),
                    labelText: "Landline Number : ",
                  ),
                  validator:(value){
              if(value.isEmpty)
              {return "This field is empty";
              }else if(value.length!=8){return "must be 8 digits";}else if(value.contains(RegExp(r'[A-Z]')))
              {return "only numbers allowed";}else if(value.contains(RegExp(r'[a-z]'))){return "only numbers allowed";}return null;
            
              }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  
                  decoration: InputDecoration(
                    icon: Icon(Icons.phone),
                    labelText: "Mobile: ",
                  ),
                      validator:(value){
              if(value.isEmpty)
              {return "This field is empty";
              }else if(value.length!=10){return "must be 10 digits";}else if(value.contains(RegExp(r'[A-Z]')))
              {return "only numbers allowed";}else if(value.contains(RegExp(r'[a-z]'))){return "only numbers allowed";}return null;
            
                      }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "Whatsapp Number: ",
                  ),
                  validator:(value){
              if(value.isEmpty)
              {return "This field is empty";
              }else if(value.length!=10){return "must be 10 digits";}else if(value.contains(RegExp(r'[A-Z]')))
              {return "only numbers allowed";}else if(value.contains(RegExp(r'[a-z]'))){return "only numbers allowed";}return null;
            
                      }
                ),
                SizedBox(height: 18),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: Icon(Icons.note),
                    labelText: "Telegram Number: ",
                  ),
                  validator:(value){
              if(value.isEmpty)
              {return "This field is empty";
              }else if(value.length!=10){return "must be 10 digits";}else if(value.contains(RegExp(r'[A-Z]')))
              {return "only numbers allowed";}else if(value.contains(RegExp(r'[a-z]'))){return "only numbers allowed";}return null;
            
                      }
                ),
                SizedBox(height:20),
                RaisedButton(
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.red,
                    child: Container(
                        width: width * 0.4,
                        child: Text(
                          'Save',
                          textAlign: TextAlign.center,
                        )),
                    onPressed: () {
                      if(formKey.currentState.validate()){
                      Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
                      }
                    },
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17)),
                       
                  ),
              
                          
                          


                ]
              )
            )
          )
        ]
      )
        )
    );
  }

  
}