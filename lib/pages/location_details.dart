import 'package:flutter/material.dart';
import 'package:garage/main.dart';


class LocationDetails extends StatefulWidget {
  final location_details_name;
  final location_details_hours;
  final location_details_contact;
  final location_details_picture;

  LocationDetails(
      {this.location_details_name,
      this.location_details_hours,
      this.location_details_contact,
      this.location_details_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<LocationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text('Garage')),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          // IconButton(
          //     icon: Icon(
          //       Icons.shopping_cart,
          //       color: Colors.white,
          //     ),
          //     onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.location_details_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.location_details_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                          child: Text(
                        widget.location_details_contact,
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: Text(
                        widget.location_details_hours,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ======== The first Size Button ============

          Row(
            children: [
              // ============The Size  ================
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose the size'),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("Size")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),

              // ============The Size  ================
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Color'),
                          content: Text('Choose the Color'),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("Color")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),

              // ============The Size  ================
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Quantity'),
                          content: Text('Choose the Quantity'),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("Qty")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),
            ],
          ),

          // ======== The Second Size Button ============

          Row(
            children: [
              // ============The Size  ================
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.redAccent,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text("Contact Now")),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {}),

              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {})
            ],
          ),

          Divider(),
          ListTile(
            title: Text(
              'Garage Descriptions',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Our Service Bay offers quick and reliable oil change service and free preventive maintenance checks.Most Shell Service Bay outlets can also cater to your basic vehicle service needs which include tune-ups, transmission works, minor mechanical repairs, brake system maintenance, etc.Our professional and friendly technicians are equipped with the knowledge and skills to provide you with excellent service and keep your vehicle running right.',
              style: TextStyle(height: 1.8),
            ),
          ),

          Divider(),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Garage Location',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.location_details_name),
              )
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Service Brand',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('Brand X'),
              )
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Condition',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('Used Product'),
              )
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Other Garage Location", style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          // Single Product Selection
          Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
          return Similar_single_location(
            location_name: location_list[index]['name'],
            location_picture: location_list[index]['picture'],
            location_contact: location_list[index]['open_hours'],
            location_hours: location_list[index]['contact'],
          );
        });
  }
}

class Similar_single_location extends StatelessWidget {
  final location_name;
  final location_picture;
  final location_hours;
  final location_contact;

  Similar_single_location(
      {this.location_name,
      this.location_picture,
      this.location_contact,
      this.location_hours});

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
                        location_details_hours: location_hours,
                        location_details_contact: location_contact,
                        location_details_picture: location_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(child: Text(location_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)),
                        Text(location_contact, style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),)
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
