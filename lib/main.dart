import 'package:flutter/material.dart';
import 'package:home_credit_partners/layouts/navigation_layout.dart';

import 'common/colors.dart';

void main() => {
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NavigationLayout(
          backgroundColor: AppColors.greyColor,
        ),
      ))
    };
