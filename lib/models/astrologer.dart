import 'package:flutter/material.dart';

class Astrologer {
  final String id;
  final String firstName;
  final String lastName;
  final String aboutMe;
  final String imageName;
  final double experience;
  final List<String> languages;
  final double minimumCallDuration;
  final double minimumCallDurationCharges;
  final double additionalPerMinuteCharges;
  final bool isAvailable;
  final double ratings;
  final List<String> skills;
  Astrologer({
    required this.id,
    required this.aboutMe,
    required this.firstName,
    required this.lastName,
    required this.imageName,
    required this.experience,
    required this.languages,
    required this.minimumCallDuration,
    required this.additionalPerMinuteCharges,
    required this.minimumCallDurationCharges,
    required this.isAvailable,
    required this.ratings,
    required this.skills,
  });
}
