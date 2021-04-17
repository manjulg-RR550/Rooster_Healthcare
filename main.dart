import 'package:flutter/material.dart';
import 'second.dart';
import 'welcome.dart';
import 'package:provider/provider.dart';
import 'package:health/theme_changer.dart';
import 'package:health/model/user_model.dart';
import 'package:animated_splash/animated_splash.dart';
/*void main() {
  runApp(
    MultiProvider(
      providers: [
       /* ChangeNotifierProvider(
         create: (_) => EAWBModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => UserModel(null, null),
        ),*/
        ChangeNotifierProvider(create: (_) => ThemeChanger())
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rooster Healthcare',
      theme: theme.themeData,
      darkTheme: ThemeData.dark()
        ..copyWith(
          backgroundColor: Colors.grey[800],
        ),
      themeMode: theme.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      home: Welcome(),
      
    );
  }
}*/


void main() {
  
Function duringSplash = () {
	//print('Something background process');
	int a = 123 + 23;
	print(a);

	if (a > 100)
	return 1;
	else
	return 2;
};

Map<int, Widget> op = {1: Home(), 2: Second()};

runApp(MultiProvider(
      providers: [
       /*aChangeNotifierProvider(
          create: (_) => EAWBModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => UserModel(null, null),
        ),*/
        ChangeNotifierProvider(create: (_) => ThemeChanger())
      ],
      
 child:MaterialApp(
  debugShowCheckedModeBanner: false,
	home: AnimatedSplash(
	imagePath: 'assets/image3.png',
	home: Home(),
	customFunction: duringSplash,
	duration: 2000,
	type: AnimatedSplashType.BackgroundProcess,
	outputAndHome: op,
	),
 )
));
}

class Home extends StatefulWidget {
@override
_HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
@override
Widget build(BuildContext context) {
	return MaterialApp(
    debugShowCheckedModeBanner: false,
  home: Scaffold(		
		body: Welcome()
    /*Center(
			child: Text('My Home Page',
				style: TextStyle(color: Colors.black,
					fontSize: 20.0))*/));
}
}
