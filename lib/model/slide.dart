import 'package:dietonyi/src/constants/text_strings.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/image1.jpg',
    title: tOnBoardingTitle1,
    description: tOnBoardingSubTitle1,
  ),
  Slide(
    imageUrl: 'assets/images/image2.jpg',
    title: tOnBoardingTitle2,
    description: tOnBoardingSubTitle2,
  ),
  Slide(
    imageUrl: 'assets/images/image3.jpg',
    title: tOnBoardingTitle3,
    description: tOnBoardingSubTitle3,
  ),
];
