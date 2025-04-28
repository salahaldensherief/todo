import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DayTimeWidget extends StatelessWidget {
  DayTimeWidget({super.key});

  final DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    List<DateTime> weekDays = List.generate(
      7,
      (index) => today.add(Duration(days: index)),
    );

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: weekDays.length,
      itemBuilder: (context, index) {
        DateTime date = weekDays[index];
        String dayName = DateFormat('E').format(date);
        String dayNumber = DateFormat('d').format(date);

        bool isToday = date.day == today.day &&
            date.month == today.month &&
            date.year == today.year;

        return Container(
          width: 70,
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 9),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: isToday ? Colors.black87 : Colors.black87,
            borderRadius: BorderRadius.circular(12),
            border: isToday ? Border.all(color: Colors.blue, width: 2) : null,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                dayName,
                style: TextStyle(
                  color: isToday ? Colors.blue : Colors.white,
                  fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                dayNumber,
                style: TextStyle(
                  color: isToday ? Colors.blue : Colors.white,
                  fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
