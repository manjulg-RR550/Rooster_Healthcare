import 'package:flutter/material.dart';
import 'package:health/loginscreen/main_logincardscreen.dart';
import 'nabl.dart';

class Jci extends StatefulWidget {
  Jci({Key key}) : super(key: key);

  @override
  _JciState createState() => _JciState();
}

class _JciState extends State<Jci> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
        child: Scaffold(
      body: Stack(children: [
        ClipPath(
  clipper: BezierClipper(),
  child: Container(
    color : Colors.pink[300],
    //Color.fromRGBO(255, 91, 53, 1),
    
  ),
),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome",
            style: TextStyle(color: Colors.white,
                fontSize: 29, fontWeight: FontWeight.bold, ),
          ),
          SizedBox(height:15),
          Text(
            "We are glad you are here,Lets get started",
            style: TextStyle(color: Colors.white,
                fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "Arial",),
            textAlign: TextAlign.center,
            
          ),
      
          SizedBox(
            height: 150,
          ),
          Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/compliant.png"),
                  ))),
          SizedBox(
            height: 15,
          ),
          Text(
            "JCI",
            style: TextStyle(
                color: Colors.pink[300],
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'DancingScript'),
          ),
          SizedBox(height:20),
          Text(
           "It is recognized as a global leader for healthcare quality of care and patient safety",
            style: TextStyle(
                color: Colors.pink[300],
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'DancingScript'),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 70,
          ),
          ],
        ),
      ]
    ),
        /*floatingActionButton:FloatingActionButton(
        tooltip: 'Increment',
        onPressed: ()
        {
          print("clicked");
        },
        child: Icon(Icons.skip_next),
        backgroundColor: Colors.pink[300],

      ),*/
      bottomNavigationBar: BottomAppBar(
        color: Colors.white, 
        child:Row(          
          children: <Widget>[
            SizedBox(width: 20),
            IconButton(
              onPressed: (){
                Navigator.pop(context);
               }, 
              icon: Icon(Icons.skip_previous,color: Colors.pink[300],)
              ),
            SizedBox(width: 250),
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
             builder: (context)=>LoginCardScreen()));
              }, 
              icon: Icon(Icons.skip_next,color: Colors.pink[300],))
          ],
        )
      ),
        
        )
      
    );
  }
}

class BezierClipper extends CustomClipper<Path>{
 @override
Path getClip(Size size){
  Path path = new Path();
  path.lineTo(0, size.height*0.47); //vertical line
  path.cubicTo(size.width/3, size.height/2, 2*size.width/3, size.height*0.3, size.width, size.height*0.35); //cubic curve
  path.lineTo(size.width, 0); //vertical line
  return path;
}

@override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}