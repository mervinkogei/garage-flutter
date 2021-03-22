import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Method'),
        backgroundColor: Colors.redAccent,
      ),
      body: Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          padding: EdgeInsets.all(20.0),
          height: 280.0,
          color: Colors.black26,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("images/card.png"),
                height: 100.0,
              ),
              Text(
                'Payment method that is verified & Accepted',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Credit Card',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              Center(
                child: ButtonBar(
                  children: [
                    // ignore: deprecated_member_use
                    Center(
                      child: FlatButton(
                        onPressed: () {
                          showAlertDialog(context);
                        },
                        child: Text('Check Credit Card Status'),
                        color: Colors.purple,
                        textColor: Colors.white,
                      ),
                    ),
                    // ignore: deprecated_member_use
                    // FlatButton(
                    //   onPressed: () {},
                    //   child: Text('Disagree'),
                    //   color: Colors.red,
                    //   textColor: Colors.white,
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
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
    title: Text("Payment Method"),
    content: Text("Credit Card is allowed Here!"),
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
