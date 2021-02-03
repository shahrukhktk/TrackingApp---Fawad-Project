import 'package:flutter/material.dart';
import 'package:trackingapp/appassets/constants.dart';
import 'package:trackingapp/appassets/custom_textfield.dart';
import 'package:trackingapp/appassets/dropdown_widget.dart';
import 'package:trackingapp/screens/track.dart';

class BookSamuraiScreen extends StatefulWidget {
  @override
  _BookSamuraiScreenState createState() => _BookSamuraiScreenState();
}

class _BookSamuraiScreenState extends State<BookSamuraiScreen> {

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Book Your Samurai', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
      backgroundColor: Colors.white,
      ),

      body: ListView(
        padding: EdgeInsets.all(20),
        children: [

          LocationTxtBox(text: "Location",),

          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 15),
            child: DropDownClass(),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: WaiterDropdown(),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: LocationTxtBox(text: "Number of workers",),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: JobDescription(text: "Job Description",),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: LocationTxtBox(text: "Hourly rate",),
          ),

          //DATE Edittext
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: DateTxtBox(text: "Date",),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: TimeTxtBox(text: "Time",),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: TimeTxtBox(text: "No. of hours",),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Total Amount', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                Text('\$35', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
              ],
            )
          ),

          Divider(
            thickness: 1,
            color: Colors.grey,
          ),

          Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Automatically select workers for me', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),),
                  Switch(
                    activeColor: AppColors.greencolor,
                    value: status,
                    onChanged: (value) {
                      setState(() {
                        status = value;
                      });
                    },
                  ),
                ],
              )
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 20),
            child: Center(
              child: FlatButton(
                height: 48,
                minWidth: 330,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                    side: BorderSide(color: AppColors.themecolor)),
                color: AppColors.themecolor,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TrackScreen()),);
                },
                child: Text(
                  "Confirm",
                  style: TextStyle(
                      fontSize: 16.0, fontFamily: 'Roboto'
                  ),
                ),
              ),
            ),
          ),




        ],
      ),
    );
  }
}
