
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

// This widget is the root of your application.
@override
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Societies of MSCW",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: !isSearching
              ? Text("Societies of MSCW")
              : TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ))),
          actions: <Widget>[
            isSearching
                ? IconButton(
                    icon: Icon(Icons.cancel),
                    onPressed: () {
                      setState(() {
                        this.isSearching = false;
                      });
                    },
                  )
                : IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        this.isSearching = true;
                      });
                    },
                  )
          ],
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
            child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'image/orientation.jpg',
                      width: 400,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

              
  

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                      child: Column(
                        children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
             
                        Text('Central Soceities',
                            style: TextStyle(
                                color: Color(0xFF720972),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                            )),
                        
                  new InkWell(
                          child: new Text('More'),
                          onTap: () => launch(""),
                        ),
                      ],
                    ),
                  ),
                              ),
                   
                       Container(
                    height: 170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        addEvent("  Parindey","https://www.duupdates.in/wp-content/uploads/2020/10/Mata-Sundari-College-for-Women.jpg"),

                        SizedBox(
                          width: 10.0,
                        ),
                       addEvent("  Divinity\n  Soceity","https://cache.careers360.mobi/media/presets/720X480/colleges/social-media/media-gallery/7088/2019/6/1/Campus%20View%20of%20Mata%20Sundri%20College%20for%20Women%20New%20Delhi_Campus-View.jpg"),
                        
                        SizedBox(
                          width: 10.0,
                        ),
                       addEvent("  Cultural\n  Society","https://www.mscw.ac.in/resources/img/gallery/Annual_day/an4.JPG"),
                        
                        SizedBox(
                          width: 10.0,
                        ),
                      addEvent("  Pratibimb","https://www.mscw.ac.in/resources/img/gallery/Annual_day/an1.JPG"),
                        
             


                      ],
                    ),
                  ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         
                          Text('Departmental Societies',
                              style: TextStyle(
                                color: Color(0xFF720972),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                         
                       new InkWell(
                            child: new Text('More'),
                            onTap: () => launch(""),
                          ),
                        ],
                      ),
                  ),
                    ),
                       Container(
                    height: 170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        addEvent("  Kasak","https://www.duupdates.in/wp-content/uploads/2020/10/Mata-Sundari-College-for-Women.jpg"),

                        SizedBox(
                          width: 10.0,
                        ),
                       addEvent("Polimates","https://cache.careers360.mobi/media/presets/720X480/colleges/social-media/media-gallery/7088/2019/6/1/Campus%20View%20of%20Mata%20Sundri%20College%20for%20Women%20New%20Delhi_Campus-View.jpg"),
                        
                        SizedBox(
                          width: 10.0,
                        ),
                       addEvent("  Statistika","https://www.mscw.ac.in/resources/img/gallery/Annual_day/an4.JPG"),
                        
                        SizedBox(
                          width: 10.0,
                        ),
                      addEvent("  Gatha","https://www.mscw.ac.in/resources/img/gallery/Annual_day/an1.JPG"),
                        
                      


                      ],
                    ),
                  ),
                        ],
                      ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class addEvent extends StatelessWidget {
  String Url;
  String heading;
  addEvent(this.heading,this.Url);
@override
Widget build (BuildContext context)
{
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
               height:170,
               width: 130,
              child:  Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  alignment: Alignment.center,
                  child:Text(
                  heading,
                  style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold),
                ),
                ),
              ),
              decoration: new BoxDecoration(
                color: const Color(0x000000),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
                  image: new NetworkImage(
                    Url,
                  ),
                ),
                  borderRadius: BorderRadius.circular(10),
              ),
            ),

    );
}

}

