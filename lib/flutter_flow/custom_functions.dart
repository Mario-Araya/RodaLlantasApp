import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int remainingDays(DateTime quoteDate) {
  // Obtén la fecha actual
  final now = DateTime.now();

  // Comprueba si la cita ya ha ocurrido
  if (now.isAfter(quoteDate)) {
    return 0;
  }

  // Calcula la diferencia en días entre la fecha de la cita y la fecha actual
  final difference = quoteDate.difference(now).inDays;
  return difference;
}

double subTotalSum(
  double subTotalValue,
  double price,
) {
  subTotalValue = subTotalValue + price;
  return subTotalValue;
}

double subTotalRemove(
  double subTotalValue,
  double price,
) {
  if (subTotalValue > 0) {
    subTotalValue = subTotalValue - price;
  }

  return subTotalValue;
}

double totalList(List<double> subTotal) {
  // Get the total value
  double total = 0;

  for (double add in subTotal) {
    total += add;
  }

  return total;
}

double calculateSubTotal(
  double price,
  int amount,
) {
  return price * amount;
}
