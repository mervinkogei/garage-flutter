import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:garage/components/locations.dart';
// import 'package:garage/login.dart';
import 'package:garage/pages/about.dart';
import 'package:garage/pages/category.dart';
import 'package:garage/pages/google_map_screen.dart';
import 'package:garage/pages/my_account.dart';
import 'package:garage/pages/payment.dart';
import 'package:garage/pages/settings.dart';
import 'package:garage/start.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Start(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/audio.jpg'),
          AssetImage('images/brake.jpg'),
          AssetImage('images/engine.jpg'),
          AssetImage('images/paint.jpg'),
          AssetImage('images/wheel.jpg'),
          AssetImage('images/type.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 4.0,
      ),
    );
      return Scaffold(
      // body: Center(child: Text('Welcome')),
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: Text('Garage App'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(children: [
            UserAccountsDrawerHeader(
              accountName: Text('Lydiah'),
              accountEmail: Text('lydiah@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(color: Colors.redAccent),
            ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home',style: TextStyle(color: Colors.blueAccent)),
              leading: Icon(
                Icons.home, color: Colors.redAccent,
              ),
          )
          ),

          InkWell(
             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Location())),
            child: ListTile(
              title: Text('Locations',style: TextStyle(color: Colors.blueAccent)),
              leading: Icon(
                Icons.location_city, color: Colors.redAccent,
              ),
          )
          ),

          InkWell(
             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Category())),
            child: ListTile(
              title: Text('Category',style: TextStyle(color: Colors.blueAccent),),
              leading: Icon(
                Icons.dashboard, color: Colors.redAccent,
              ),
          )
          ),

          InkWell(
             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment())),
            child: ListTile(
              title: Text('Payment',style: TextStyle(color: Colors.blueAccent)),
              leading: Icon(
                Icons.payment, color: Colors.redAccent,
              ),
          )
          ),
           Divider(),

          InkWell(
             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings())),
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(
                Icons.settings
              ),
          )
          ),

          InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>About())),
            child: ListTile(
              title: Text('About'),
              leading: Icon(
                Icons.help, color: Colors.blueAccent,
              ),
          )
          ),

        ],),
      ),
        body: ListView(
        children: <Widget>[
          //Image Carousel
          image_carousel,

           SizedBox(height: 20.0),
        
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Our Garage Locations', style: TextStyle(fontSize: 20.0),)
                ],
              ),
            ),
          ),

          SizedBox(height: 20.0),

           Container(
            height: 320.0,
            child: Location(),
          ),
          
          ],
        ),
         floatingActionButton: FloatingActionButton(
             onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> GoogleMapScreen())),
           tooltip: 'Google Maps',
           child: Icon(Icons.pin_drop_outlined),backgroundColor: Colors.redAccent,)
      
    );
  }
}


