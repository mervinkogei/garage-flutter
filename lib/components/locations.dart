import 'package:flutter/material.dart';
import 'package:garage/pages/location_details.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  var location_list = [
    {
      "name": "Ngara",
      "picture": "images/audio.jpg",
      "open_hours": "6am-6pm",
      "contact": "0725761834",
    },
    {
      "name": "westlands",
      "picture": "images/balancing.jpg",
      "open_hours": "8am-9pm",
      "contact": "0778126403",
    },
    {
      "name": "upper hill",
      "picture": "images/engine.jpg",
      "open_hours": "7am-9pm",
      "contact": "0728709165",
    },
    {
      "name": "ngong road",
      "picture": "images/lighting.jpg",
      "open_hours": "8am-7pm",
      "contact": "0715868254",
    },
    {
      "name": "kilimani",
      "picture": "images/casette.jpg",
      "open_hours": "8am-7pm",
      "contact": "0714897007",
    },
    {
      "name": "Kasarani",
      "picture": "images/auto_spare.jpg",
      "open_hours": "8am-7pm",
      "contact": "0722167345",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: location_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_location(
            location_name: location_list[index]['name'],
            location_picture: location_list[index]['picture'],
            location_hours: location_list[index]['open_hours'],
            location_contact: location_list[index]['contact'],
          );
        });
  }
}

class Single_location extends StatelessWidget {
  final location_name;
  final location_picture;
  final location_hours;
  final location_contact;

  Single_location(
      {this.location_name,
      this.location_picture,
      this.location_hours,
      this.location_contact});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: location_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LocationDetails(
                        //Passing the values of the product
                        location_details_name: location_name,
                        location_details_contact: location_contact,
                        location_details_hours: location_hours,
                        location_details_picture: location_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          location_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        )),
                        Text(
                          location_contact,
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  child: Image.asset(
                    location_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
