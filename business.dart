import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/cupertino.dart';

import '/homescreen/main_homescreen.dart';
//import 'package:rooster/ui/homescreen/pdf.dart';
import '/homescreen/pdfpreview.dart';
import 'package:path_provider/path_provider.dart';
import 'pdfpreview.dart';
import 'package:pdf/widgets.dart' as pw;

class Business extends StatefulWidget {
  @override
  _Dropp createState() => _Dropp();
}

final Color primaryColor = Colors.red;

class _Dropp extends State<Business> {
  String item1, item2, item3, item4;
  List listItem = ["001", "002", "003", "004"];
  List name = ["aaa", "bbb", "ccc"];
  List company = ["NABH", "NABL", "JCI"];
  List notes = ["aaa", "bbb", "ccc"];
  final pdf = pw.Document();

  writeOnPdf(){
    pdf.addPage(
      pw.MultiPage(
       // pageFormat: PdfPageFormat.a5,
        margin: pw.EdgeInsets.all(32),

        build: (pw.Context context){
          return <pw.Widget>  [
            pw.Header(
              level: 0,
              child: pw.Center(child: pw.Text("Roster Healthcare",),
              ),
            ),
            pw.Paragraph(
              text: "Business Category"
            ),
            
            pw.Paragraph(
              text: "Business Code : $item1"
            ),
            
            pw.Paragraph(
                text: "Business Ownership : $item2"
            ),
            pw.Paragraph(
                text: "Business Name : $item3"
            ),
            pw.Paragraph(
                text: "Business Note : $item4"
            ),
  ];
        },


      )
    );
  }

  Future savePdf() async{
    Directory documentDirectory = await getApplicationDocumentsDirectory();

    String documentPath = documentDirectory.path;

    File file = File("$documentPath/example.pdf");

    file.writeAsBytesSync(pdf.save());
  }


  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: Text("Business Category", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        actions:[Padding(
         padding: EdgeInsets.only(right: 20.0),
         child: GestureDetector(
         onTap: ()async{
          writeOnPdf();
          await savePdf();

          Directory documentDirectory = await getApplicationDocumentsDirectory();

          String documentPath = documentDirectory.path;

          String fullPath = "$documentPath/example.pdf";

          Navigator.push(context, MaterialPageRoute(
            builder: (context) => PdfScreen(path: fullPath,)
          ));

        },
          /*() {
          Navigator.push(context,                  MaterialPageRoute(builder: (context) => Pdf()));
         },*/
         child: Icon(
            Icons.picture_as_pdf
            ),
            )
            ),
         ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text("Business Code: "),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(12)),
              child: DropdownButton(
                // dropdownColor: primaryColor,
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
          SizedBox(height: 20),
          Text("Business ownership: "),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(12)),
              child: DropdownButton(
                //dropdownColor: primaryColor,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36,
                isExpanded: true,
                underline: SizedBox(),
                style: TextStyle(color: Colors.black, fontSize: 20),
                value: item2,
                onChanged: (newValue) {
                  setState(() {
                    item2 = newValue;
                  });
                },
                items: company.map((valueItem) {
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
            onChanged: (newValue) {
                  setState(() {
                    item3 = newValue;
                  });
                },
            decoration: InputDecoration(
              icon: Icon(Icons.note),
              labelText: "Business Category name: ",
            ),
          ),
          SizedBox(height: 15),
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              icon: Icon(Icons.note),
              labelText: "Business Category note: ",
            ),
            onChanged: (newValue) {
                  setState(() {
                    item4 = newValue;
                  });
                }
          ),

          SizedBox(height: 18),

          RaisedButton(
            child: Text('Save', style: TextStyle(color: Colors.white)),
            onPressed:
            
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            color: primaryColor,
          ),
        ],
      ),
    );
  }
  
}
