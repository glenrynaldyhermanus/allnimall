import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

bool isLoggedIn(DocumentReference user) {
  if (user == null) {
    return false;
  }

  return true;
}

String formatPhone(String phoneNumber) {
  if (phoneNumber.startsWith("0")) {
    phoneNumber = "+62" + phoneNumber.substring(1, phoneNumber.length);
  } else {
    if (!phoneNumber.startsWith("+")) {
      phoneNumber = "+62" + phoneNumber;
    }
  }
  return phoneNumber;
}

String checkConditions(
  bool hasFungus,
  bool hasFleas,
  bool hasWorms,
  bool hasEarmites,
  bool hasScabies,
  bool hasDiarrhea,
) {
  // Add your function code here!
  if (hasFungus ||
      hasFleas ||
      hasWorms ||
      hasEarmites ||
      hasScabies ||
      hasDiarrhea) {
    return "Not healthy";
  }

  return "Healthy";
}

String countAgeString(DateTime dateTime) {
  // string age from datetime
  var age = DateTime.now().difference(dateTime);
  String years = 'year${(age.inDays / 365).floor() > 1 ? 's' : ''}';
  String months = 'month${(age.inDays / 30).floor() > 1 ? 's' : ''}';
  return '${age.inDays ~/ 365} $years ${age.inDays ~/ 30} $months';
}

String countFee(
  int quantity,
  double fee,
) {
  // string currency from integer

  double amount = quantity * fee;

  final formatter = NumberFormat("###,###");
  return formatter.format(amount);
}

String countDiscount(int quantity) {
  // string currency from integer

  int fee = quantity * -20000;

  final formatter = new NumberFormat("###,###");
  return formatter.format(fee);
}

String countTotal(
  int quantity,
  double serviceFee,
  double totalDiscount,
) {
  // string currency from integer

  double fee = (quantity * serviceFee) - (quantity * totalDiscount);

  final formatter = NumberFormat("###,###");
  return formatter.format(fee);
}

String generateOrderNumber(DateTime dateTime) {
  // generate order number from date time
  var now = DateTime.now();
  final int ms = now.millisecondsSinceEpoch;
  final int idMaker =
      dateTime.millisecondsSinceEpoch + math.Random().nextInt(1000);
  return 'GRM-$ms-$idMaker';
}

double countAmount(
  double serviceFee,
  int quantity,
  double discount,
) {
  return (serviceFee * quantity) - (discount * quantity);
}

bool isDatePicked(DateTime dateTime) {
  // Add your function code here!
  if (dateTime == null) {
    return false;
  }
  return true;
}

int countFavs(List<DocumentReference> favedBy) {
  // count length from list
  if (favedBy.length == null) {
    return 0;
  }
  return favedBy.length;
}

String fullStatus(String status) {
  if (status == "New") {
    return "Menunggu Konfirmasi";
  }

  return status;
}

String fullPaymentStatus(String paymentStatus) {
  if (paymentStatus == "Unpaid") {
    return "Belum dibayar";
  } else if (paymentStatus == "Paid") {
    return "Lunas";
  }

  return paymentStatus;
}

bool isPaid(String paymentStatus) {
  if (paymentStatus == "Paid") {
    return true;
  }
  return false;
}

bool isOrderConfirmed(String status) {
  if (status == "New" || status == "Rejected" || status == "Canceled") {
    return false;
  }
  return true;
}

bool hasNotes(String notes) {
  if (notes.isEmpty) {
    return false;
  }
  return true;
}

int stringToInteger(String param) {
  // convert string to integer
  if (param == null) {
    return 0;
  } else if (param.isEmpty) {
    return 0;
  } else {
    return int.parse(param);
  }
}

String combinedServiceName(
  String serviceName,
  String categoryName,
  String numOfPet,
) {
  // Add your function code here!
  if (serviceName.isNotEmpty) {
    return '$serviceName x $numOfPet $categoryName';
  }

  return "";
}

String combinedSchedule(
  DateTime schedule,
  String prefTime,
) {
  // Add your function code here!
  if (schedule != null) {
    return '${DateFormat("MMMMEEEEd", "id").format(schedule)} - $prefTime';
  }

  return "";
}

bool isEarlierThanToday(DateTime date) {
  // return boolean is date earlier than today
  return DateTime(date.year, date.month, date.day).isBefore(
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day));
}

bool isOrderFormSet(
  String address,
  String serviceName,
  DateTime scheduleDate,
) {
  print(address.isNotEmpty && serviceName.isNotEmpty && scheduleDate != null);

  // all parameter is set and not empty or null
  return address.isNotEmpty && serviceName.isNotEmpty && scheduleDate != null;
}
