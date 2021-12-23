import 'package:flutter/material.dart';

class Contact {
  String name = "";
  String number = "";
  String email = "";
  String id = "";

  Contact({
    this.name = "",
    required this.number,
    this.email = "",
    required this.id,
  });
}
