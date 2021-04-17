import 'package:flutter/material.dart';
import 'nabh.dart';
import 'package:health/loginscreen/main_logincardscreen.dart';

class Welcome extends StatefulWidget {
  Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        ClipPath(
  clipper: BezierClipper(),
  child: Container(
    color : Colors.red,
    //Color.fromRGBO(255, 91, 53, 1),
    
  ),
),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome!",
            style: TextStyle(color: Colors.white,
                fontSize: 25, fontWeight: FontWeight.bold, ),
          ),
          SizedBox(
            height: 150,
          ),
          
          Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/logo.png"),
                  ))),
          SizedBox(
            height: 10,
          ),
          Text(
            "Rooster Healthcare",
            style: TextStyle(
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Comfortaa'),
          ),
          SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "NABH",
                style: TextStyle(color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                width: 10,
              ),
              ClipOval(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "NABL",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                width: 10,
              ),
              ClipOval(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "JCI",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            elevation: 5,
            onPressed: () {              
              Navigator.push(context, MaterialPageRoute(builder: (context) => Nabh()));
            },
            child: Text("Let's Start"),
          ),
        ],
      ),
      ]
    )
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
