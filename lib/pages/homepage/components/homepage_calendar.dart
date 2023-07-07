import 'package:flutter/material.dart';
import '../../../utils/custom_widgets.dart';

class HomePageCalendarSegment extends StatelessWidget {
  const HomePageCalendarSegment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 20),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CalendarSegment(dayText: "Sun", dayNumber: "12"),
              CalendarSegment(dayText: "Mon", dayNumber: "13"),
              CalendarSegment(dayText: "Tue", dayNumber: "14"),
              CalendarSegment(dayText: "Wed", dayNumber: "15"),
              CalendarSegment(dayText: "Thu", dayNumber: "16"),
              CalendarSegment(dayText: "Fri", dayNumber: "17"),
              CalendarSegment(dayText: "Sat", dayNumber: "18"),
            ],
          ),
        ),
      ),
    );
  }
}
