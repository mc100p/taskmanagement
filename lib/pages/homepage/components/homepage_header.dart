import 'package:flutter/material.dart';

import '../../../utils/magic_strings.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
            Image.asset(
              ImageNames.profilePicture,
              height: 50,
              width: 50,
            )
          ],
        ),
      ),
    );
  }
}
