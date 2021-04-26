import 'package:flutter/material.dart';

class Nabl extends StatefulWidget {
  Nabl({Key key}) : super(key: key);

  @override
  _NablState createState() => _NablState();
}
class _NablState extends State<Nabl> {
  @override
  Widget build(BuildContext context) {
    return /*SafeArea(
        child:*/ Scaffold(
          backgroundColor: Colors.grey[200],
          body:SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(left:15.0,right:15.0,bottom:15.0),
          child:Column(
            children: [
              Stack(
                overflow: Overflow.visible,
                alignment: Alignment.center,
                children: [
                  Image(width:double.infinity,height: MediaQuery.of(context).size.height/3,image:NetworkImage("https://www.jfcr.or.jp/hospital-en/images/main_visual04.jpg"),
                  ),
                  Positioned(
                    bottom:-60.0,
                    child: CircleAvatar(radius:80,backgroundColor:Colors.white,backgroundImage:NetworkImage("https://abound.college/finishcollege/wp-content/uploads/sites/2/2017/05/iStock-516793328-1100x672.jpg"))),

                ],
              ),
              SizedBox(height:60),
              ListTile(
                title: Center(child: Text("About NABH",style: TextStyle(color: Colors.pink[600],fontSize:20),)),
              subtitle: Center(child:Text ("Accreditation programme"),),
              ),
              FlatButton.icon(onPressed: (){}, icon: Icon(Icons.mail), label: Text("Mail"),color: Colors.pink,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),),
              SizedBox(height:20),
              ListTile(
                title: Text("Vision",style: TextStyle(color: Colors.pink[600]),),
                subtitle: Text("To be the apex national healthcare accreditation and quality improvement body, functioning at par with global benchmarks",textAlign: TextAlign.justify,),
                ),
              SizedBox(height:20),
              ListTile(
                title: Text("Mission",style: TextStyle(color: Colors.pink[600]),),
                subtitle: Text("To operate accreditation and allied programs in collaboration with stakeholders focusing on patient safety and quality of healthcare based upon national/international standards, through process of self and external evaluation",textAlign: TextAlign.justify),
                ),
                SizedBox(height:20),
              ListTile(
                title: Text("Values",style: TextStyle(color: Colors.pink[600]),),
                subtitle: Text("Credibility\nResponsiveness\nTransparency\nInnovation",textAlign: TextAlign.justify),
                ),
                SizedBox(height:20),
              ListTile(
                title: Text("Scope",style: TextStyle(color: Colors.pink[600]),),
                subtitle: Text("Accreditation of healthcare facilities\nQuality promotion\nIEC activities\nEducation and Training for Quality & Patient Safety\nRecognition",textAlign: TextAlign.justify),
                ),
              /*SizedBox(height:30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.face)),
                  
                ],
              )*/

            ],
            )
          ),
          ),
        );
  }

}