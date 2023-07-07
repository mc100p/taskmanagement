import 'package:flutter/material.dart';

import '../../../utils/magic_strings.dart';

class HomePageTitle extends StatelessWidget {
  const HomePageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      sliver: SliverToBoxAdapter(
        child: Stack(
          children: [
            const Text(
              "Manage your tasks",
              style: TextStyle(fontSize: 53, height: 0),
            ),
            Positioned(
              top: 70,
              right: 0,
              child: Image.asset(
                ImageNames.pencil,
                height: 57,
                width: 57,
              ),
            )
          ],
        ),
      ),
    );
  }
}
