import 'package:barbershop/routing/routes.dart';
import 'package:barbershop/screens/book_appointment_screen.dart';
import 'package:barbershop/screens/detail_appointment_screen.dart';
import 'package:barbershop/screens/detail_barber_screen.dart';
import 'package:barbershop/screens/home_screen.dart';
import 'package:barbershop/screens/invoice_screen.dart';
import 'package:barbershop/screens/login_screen.dart';
import 'package:barbershop/screens/onboarding_screen.dart';
import 'package:barbershop/screens/register_screen.dart';
import 'package:barbershop/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: Routes.splashScreen,
  routes: [
    GoRoute(
      path: Routes.splashScreen,
      builder: (context, state) => Splashscreen(),
    ),
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(path: Routes.login, builder: (context, state) => Login()),
    GoRoute(
      path: Routes.register,
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(path: Routes.home, builder: (context, state) => HomeScreen()),
    GoRoute(
      path: Routes.detailBarber,
      builder: (context, state) => DetailBarberScreen(),
    ),
    GoRoute(
      path: Routes.bookAppointment,
      builder: (context, state) => BookAppointmentScreen(),
    ),
    GoRoute(
      path: Routes.detailAppointment,
      builder: (context, state) => DetailAppointmentScreen(),
    ),
    GoRoute(path: Routes.invoice, builder: (context, state) => InvoiceScreen()),
  ],
);
