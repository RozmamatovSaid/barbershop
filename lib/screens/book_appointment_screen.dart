import 'package:barbershop/core/utils/icons.dart';
import 'package:barbershop/routing/routes.dart';
import 'package:barbershop/widgets/book_appointment_widget/payment_summary_widget.dart';
import 'package:barbershop/widgets/book_appointment_widget/available_time_widget.dart';
import 'package:barbershop/widgets/book_appointment_widget/calendar_widget.dart';
import 'package:barbershop/widgets/book_appointment_widget/choose_service_widget.dart';
import 'package:barbershop/widgets/elevatedbutton_item.dart';
import 'package:barbershop/widgets/main_text_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BookAppointmentScreen extends StatefulWidget {
  BookAppointmentScreen({super.key});
  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}
class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: MainTextItem(title: "Book Appointment", fontSize: 16),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(right: 18, left: 18, bottom: 30, top: 18),
        children: [
          MainTextItem(title: "Choose date"),
          SizedBox(height: 12.h),
          CalendarWidget(),
          SizedBox(height: 24.h),
          MainTextItem(title: "Choose Service", fontSize: 16),
          SizedBox(height: 12.h),
          ChooseServiceWidget(),
          SizedBox(height: 24.h),
          MainTextItem(title: "Available time", fontSize: 16),
          SizedBox(height: 12.h),
          AvailableTimeWidget(),
          SizedBox(height: 24.h),
          MainTextItem(title: "Payment summary", fontSize: 16),
          SizedBox(height: 12.h),
          PaymentSummaryWidget(),
          SizedBox(height: 25),
          ElevatedbuttonItem(
            text: "Deal booking",
            callback: () {
              context.push(Routes.detailAppointment);
            },
            isTrue: true,
            svg: AppIcons.calendarMark,
          ),
        ],
      ),
    );
  }
}
