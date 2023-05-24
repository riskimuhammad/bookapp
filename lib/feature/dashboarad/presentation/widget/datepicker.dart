import 'package:flutter/material.dart';

class DatePicker {
  datepicker({title, Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Text(title),
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1, color: Colors.grey))),
      ),
    );
  }
}

DatePicker datePicker = DatePicker();
