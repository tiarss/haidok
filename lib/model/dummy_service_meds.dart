import 'package:flutter/material.dart';

class ServiceMeds {
  String title;
  IconData icon;

  ServiceMeds({
    required this.title,
    required this.icon,
  });
}

List<ServiceMeds> serviceData = [
  ServiceMeds(title: "Konsultasi", icon: Icons.medication_rounded),
  ServiceMeds(title: "Apotek Terdekat", icon: Icons.health_and_safety_rounded),
  ServiceMeds(
      title: "Rumah Sakit Terdekat", icon: Icons.local_hospital_rounded),
];
