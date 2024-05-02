import 'package:dietonyi/src/constants/image_strings.dart';
import 'package:dietonyi/src/constants/sizes.dart';
import 'package:dietonyi/src/constants/text_strings.dart';
import 'package:dietonyi/src/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
        ),
        Text(tLoginTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: TSizes.sm),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
