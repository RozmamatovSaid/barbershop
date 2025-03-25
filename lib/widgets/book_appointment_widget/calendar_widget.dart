import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../core/utils/colors.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _dateNow = DateTime.now();

  DateTime? _selectDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: _dateNow,
      firstDay: DateTime(2000),
      lastDay: DateTime.now(),
      selectedDayPredicate:
          (day) => _selectDay != null && isSameDay(_selectDay, day),
      onDaySelected: (selectedDay, focusedDay) {
        if (selectedDay.isBefore(DateTime.now())) {
          setState(() {
            _selectDay = selectedDay;
            _dateNow = selectedDay;
          });
        }
      },
      calendarStyle: CalendarStyle(
        defaultTextStyle: TextStyle(
          color: AppColors.appDark,
          fontWeight: FontWeight.w700,
        ),
        todayDecoration: BoxDecoration(
          color: AppColors.pastelBlue,
          shape: BoxShape.circle,
        ),
        todayTextStyle: TextStyle(
          color: AppColors.appDark,
        ),
        selectedDecoration: BoxDecoration(
          color: AppColors.appDark,
          shape: BoxShape.circle,
        ),
      ),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: TextStyle(
          color: AppColors.appDark,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        decoration: BoxDecoration(
          color: AppColors.pastelBlue,
          borderRadius: BorderRadius.circular(10),
        ),

        leftChevronIcon: Icon(Icons.chevron_left, color: AppColors.appDark),
        rightChevronIcon: Icon(Icons.chevron_right, color: AppColors.appDark),
        headerMargin: EdgeInsets.only(bottom: 16),
      ),
      availableGestures: AvailableGestures.none,
    );
  }
}
