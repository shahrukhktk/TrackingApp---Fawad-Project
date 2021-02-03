import 'package:flutter/material.dart';
import 'package:trackingapp/appassets/constants.dart';

class LocationTxtBox extends StatelessWidget {

  final String text;
  LocationTxtBox({this.text});

  @override
  Widget build(BuildContext context) {

    final location = TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hoverColor: AppColors.themecolor,
          focusColor: AppColors.themecolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          fillColor: AppColors.themecolor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
              width: 1.0,
            ),
          ),
        )
    );

    return location;
  }
}

class JobDescription extends StatelessWidget {

  final String text;
  JobDescription({this.text});

  @override
  Widget build(BuildContext context) {

    final description = TextFormField(
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          hoverColor: AppColors.themecolor,
          focusColor: AppColors.themecolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
          fillColor: AppColors.themecolor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
              width: 1.0,
            ),
          ),
        )
    );

    return description;
  }
}

class DateTxtBox extends StatelessWidget {

  final String text;
  DateTxtBox({this.text});

  @override
  Widget build(BuildContext context) {

    final date = TextFormField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          hoverColor: AppColors.themecolor,
          focusColor: AppColors.themecolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          suffixIcon: Icon(Icons.date_range, color: Colors.black,),
          fillColor: AppColors.themecolor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
              width: 1.0,
            ),
          ),
        )
    );

    return date;
  }
}

class TimeTxtBox extends StatelessWidget {

  final String text;
  TimeTxtBox({this.text});

  @override
  Widget build(BuildContext context) {

    final time = TextFormField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          hoverColor: AppColors.themecolor,
          focusColor: AppColors.themecolor,
          labelText: text,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          suffixIcon: Icon(Icons.timer, color: Colors.black,),
          fillColor: AppColors.themecolor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0.0),
            borderSide: BorderSide(
              color: AppColors.themecolor,
              width: 1.0,
            ),
          ),
        )
    );

    return time;
  }
}
