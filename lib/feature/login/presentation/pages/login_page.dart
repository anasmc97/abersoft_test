import 'package:abersoft_test/core/presentation/widget/button.dart';
import 'package:abersoft_test/core/presentation/widget/formfield.dart';
import 'package:abersoft_test/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:abersoft_test/core/extensions/context_extensions.dart';
import 'package:abersoft_test/core/presentation/mixins/failure_message_handler.dart';
import 'package:abersoft_test/core/presentation/widget/popup.dart';
import 'package:abersoft_test/feature/login/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:abersoft_test/feature/login/presentation/blocs/auth_bloc/auth_event.dart';
import 'package:abersoft_test/feature/login/presentation/blocs/auth_bloc/auth_state.dart';
import 'package:abersoft_test/feature/login/presentation/widgets/popup_dialog.dart';
import 'package:abersoft_test/feature/product/presentation/pages/home_page.dart';

class LoginPage extends StatelessWidget with FailureMessageHandler {
  LoginPage({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Center(
                child: Image.asset(
                  'assets/LOGO_BLUE 1.png',
                  width: context.media.size.width * 0.7,
                  height: context.media.size.height * 0.1,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: context.media.size.height * 0.1,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 52),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextFormField(
                      controller: userNameController,
                      hintext: 'Enter Your Username',
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter your username';
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    CustomTextFormField(
                      controller: passwordController,
                      hintext: 'Enter Your Password',
                      isPasswordField: true,
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter your password';
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 24),
                    BlocConsumer<AuthBloc, AuthState>(
                      listener: (context, state) {
                        state.authOrFailureOption.fold(
                          () => null,
                          (either) => either.fold(
                            (l) => handleFailure(context, l),
                            (r) => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HomePage();
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      builder: (context, state) {
                        if (state.status == Status.loading) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: AppColor.primary,
                            ),
                          );
                        } else {
                          return Align(
                            alignment: Alignment.centerRight,
                            child: CustomButton(
                              'Login',
                              color: AppColor.primary,
                              onPressed: () async {
                                context.read<AuthBloc>().add(AuthEvent.login(
                                    userNameController.text,
                                    passwordController.text));
                              },
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
