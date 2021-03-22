import 'package:flutter/material.dart';

class CheckBoxListTileDemo extends StatefulWidget {
  @override
  CheckBoxListTileDemoState createState() => new CheckBoxListTileDemoState();
}

class CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.redAccent,
        // centerTitle: true,
        title: new Text(
          'Services CheckList',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: new ListView.builder(
          itemCount: checkBoxListTileModel.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              child: new Container(
                padding: new EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    new CheckboxListTile(
                        activeColor: Colors.pink[300],
                        dense: true,
                        //font change
                        title: new Text(
                          checkBoxListTileModel[index].title,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5),
                        ),
                        subtitle: new Text(
                          checkBoxListTileModel[index].price,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.redAccent,
                              letterSpacing: 0.5),
                        ),
                        value: checkBoxListTileModel[index].isCheck,
                        secondary: Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            checkBoxListTileModel[index].img,
                            fit: BoxFit.cover,
                          ),
                        ),
                        onChanged: (bool val) {
                          itemChange(val, index);
                        })
                  ],
                ),
              ),
            );
          }),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.redAccent,
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAlertDialog(context);
        },
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}

class CheckBoxListTileModel {
  int userId;
  String img;
  String title;
  String price;
  bool isCheck;

  CheckBoxListTileModel(
      {this.userId, this.img, this.title, this.price, this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          userId: 1,
          img: 'images/paint.jpg',
          title: "Paint Alignment",
          price: 'Ksh 5000',
          isCheck: true),
      CheckBoxListTileModel(
          userId: 2,
          img: 'images/engine.jpg',
          title: "Engine Part",
          price: 'Ksh 2500',
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          img: 'images/brake.jpg',
          title: "Brake repair",
          price: 'Ksh 5000',
          isCheck: false),
      CheckBoxListTileModel(
          userId: 4,
          img: 'images/casette.jpg',
          title: "Casette",
          price: 'Ksh 1500',
          isCheck: false),
      CheckBoxListTileModel(
          userId: 5,
          img: 'images/wheel.jpg',
          title: "Wheel Alignment",
          price: 'Ksh 3500',
          isCheck: false),
    ];
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  ); // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Services Checklist"),
    content: Text("Please Contact the Garage for updated Pricing!"),
    actions: [
      okButton,
    ],
  ); // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
