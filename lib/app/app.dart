import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprint1/app/di/di.dart';

import '../features/auth/presentation/view_model/login/login_bloc.dart';
import '../features/splash/presentation/view/onboardingscreen_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Customer Management',
      home: BlocProvider.value(
        value: getIt<LoginBloc>(),
        child: const OnboardingScreenView(),
      ),
    );
  }
}
