import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mutiny/common/theme/text_styles.dart';
import 'package:mutiny/generated/assets.gen.dart';
import 'package:mutiny/presentation/auth/bloc/auth/auth_bloc.dart';
import 'package:mutiny/presentation/splash/bloc/splash_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashBloc(
        authBloc: context.read<AuthBloc>(),
      ),
      lazy: false,
      child: const _SplashView(),
    );
  }
}

class _SplashView extends StatelessWidget {
  const _SplashView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Assets.icons.launcher.appIcon.image(),
            ),
            const Spacer(),
            const Text(
              'Powered by GDSC-DUT',
              style: TextStyles.s14RegularText,
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
