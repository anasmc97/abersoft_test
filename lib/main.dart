import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:abersoft_test/core/extensions/context_extensions.dart';
import 'package:abersoft_test/core/utils/constants.dart';
import 'package:abersoft_test/feature/login/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:abersoft_test/feature/login/presentation/pages/login_page.dart';
import 'package:abersoft_test/feature/product/presentation/blocs/product_bloc/product_bloc.dart';
import 'package:abersoft_test/injector.dart';
import 'package:abersoft_test/shared/flash/presentation/blocs/cubit/flash_cubit.dart';
import 'package:abersoft_test/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ProductBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FlashCubit>(),
        ),
      ],
      child: BlocListener<FlashCubit, FlashState>(
        listener: (context, state) {
          state.when(
            disappeared: () => null,
            appeared: (message) => context.showSnackbar(message: message),
          );
        },
        child: MaterialApp(
          scaffoldMessengerKey: rootScaffoldMessengerKey,
          title: 'Flutter Abersoft Portfolio',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
