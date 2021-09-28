import 'package:astro/models/astrologer.dart';
import 'package:flutter/material.dart';

class Astrologers with ChangeNotifier {
  List<Astrologer> _astor = [
    Astrologer(
      id: '0',
      aboutMe: 'Hello I am here',
      firstName: 'Arvind',
      lastName: 'Shukla',
      imageName: 'assets/images/user-image.png',
      experience: 25.0,
      languages: ['English', 'Hindi'],
      minimumCallDuration: 5.0,
      minimumCallDurationCharges: 50,
      additionalPerMinuteCharges: 100.0,
      isAvailable: true,
      ratings: 4.5,
      skills: [
        'Coffe Cup Reading',
        'Falit Jotish',
        'Vastu',
        'Astrology',
        'Vedic',
        'Palmistry',
        'Numerology',
        'Face Reading',
        'Tarot',
      ],
    ),
    Astrologer(
      id: '1',
      aboutMe: 'Hello I am here',
      firstName: 'Ashwani',
      lastName: 'Mangal',
      imageName: 'assets/images/user-image.png',
      experience: 26.0,
      languages: ['English', 'Hindi'],
      minimumCallDuration: 5.0,
      minimumCallDurationCharges: 50,
      additionalPerMinuteCharges: 100.0,
      isAvailable: true,
      ratings: 4.3,
      skills: [
        'Vastu',
        'Astrology',
      ],
    ),
    Astrologer(
      id: '2',
      aboutMe: 'Hello I am here',
      firstName: 'Sripati Tripathi',
      lastName: 'Daivgya',
      imageName: 'assets/images/user-image.png',
      experience: 20.0,
      languages: ['English', 'Hindi'],
      minimumCallDuration: 5.0,
      minimumCallDurationCharges: 50,
      additionalPerMinuteCharges: 300.0,
      isAvailable: true,
      ratings: 4.2,
      skills: [
        'Astrology',
        'Vedic',
      ],
    ),
    Astrologer(
      id: '3',
      aboutMe: 'Hello I am here',
      firstName: 'Acharya Arvind',
      lastName: 'Mishra',
      imageName: 'assets/images/user-image.png',
      experience: 15.0,
      languages: ['English', 'Hindi'],
      minimumCallDuration: 5.0,
      minimumCallDurationCharges: 50,
      additionalPerMinuteCharges: 200.0,
      isAvailable: true,
      ratings: 4.7,
      skills: [
        'Coffe Cup Reading',
        'Falit Jotish',
        'Vastu',
        'Astrology',
        'Vedic',
        'Palmistry',
        'Numerology',
        'Face Reading',
        'Tarot',
      ],
    ),
  ];

  List<Astrologer> get astro {
    return [..._astor];
  }
}
