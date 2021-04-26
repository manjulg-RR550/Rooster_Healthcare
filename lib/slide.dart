import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/compliant.png',
    title: 'NABH',
    description: 'To establish and operate accreditation programme for healthcare organizations.It consists of 600 plus objective elements for the hospital to achieve in order to get NABH accreditation',
  ),
  Slide(
    imageUrl: 'assets/book.png',
    title: 'JCI',
    description: 'Junior Chamber International, commonly referred to as JCI is recognized as a global leader for healthcare quality of care and patient safety',
  ),
  Slide(
    imageUrl: 'assets/verified.png',
    title: 'NABL',
    description: 'It has been established with the objective of offering accreditation services in a non-discriminatory manner to all testing including medical and calibration laboratories',
  ),
];
