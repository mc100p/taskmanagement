import 'package:flutter/material.dart';

class CalendarSegment extends StatelessWidget {
  const CalendarSegment(
      {super.key, required this.dayText, required this.dayNumber});

  final String dayText;
  final String dayNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7.5),
      decoration: BoxDecoration(
          color: dayText == 'Thu' ? Colors.white : null,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Text(
            dayText,
            style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 13.5,
                color: dayText == "Thu" ? Colors.black : null),
          ),
          const SizedBox(height: 15),
          Text(
            dayNumber,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: dayText == "Thu" ? Colors.black : null),
          ),
        ],
      ),
    );
  }
}

InputDecoration textformfieldInputDecoration(
    BuildContext context, String labelText) {
  return InputDecoration(
    border: OutlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
    filled: true,
    fillColor: Colors.grey.withOpacity(0.4),
    hintText: labelText,
    hintStyle:
        TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 14),
    focusColor: Theme.of(context).primaryColor,
  );
}

InputDecoration textformfieldInputDecorationWithSuffixIcon(
    BuildContext context, String labelText, Icon icon) {
  return InputDecoration(
    border: OutlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(15)),
    filled: true,
    fillColor: Colors.grey.withOpacity(0.4),
    labelText: labelText,
    suffixIcon: icon,
    labelStyle:
        TextStyle(color: Theme.of(context).colorScheme.secondary, fontSize: 14),
    focusColor: Theme.of(context).primaryColor,
  );
}

class TitleHeader extends StatelessWidget {
  const TitleHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
