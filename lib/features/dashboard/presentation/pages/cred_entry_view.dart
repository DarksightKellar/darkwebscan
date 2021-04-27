import 'package:DarkwebScan/core/platform/app_image.dart';
import 'package:DarkwebScan/core/presentation/widgets/action_button.dart';
import 'package:DarkwebScan/core/presentation/widgets/input_field.dart';
import 'package:flutter/material.dart';

class CredEntryView extends StatefulWidget {
  const CredEntryView({Key key}) : super(key: key);

  @override
  _CredEntryViewState createState() => _CredEntryViewState();
}

class _CredEntryViewState extends State<CredEntryView> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  final passwordFocus = FocusNode();

  void performSearch() {
    FocusScope.of(context).unfocus();

    if (formKey.currentState.validate()) {
      // context.read<AuthenticationCubit>().login(
      //       email: emailController.text,
      //       password: passwordController.text,
      //       type: SignInType.Normal,
      //     );
    }
  }

  static bool validateEmail(String value) {
    const pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final regex = RegExp(pattern);
    return regex.hasMatch(value);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.darkweb,
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(height: 55),

                  // FORM
                  // ////

                  InputField(
                    hint: 'Email',
                    value: "",
                    controller: emailController,
                    autocorrect: false,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.none,
                    onEditingComplete: passwordFocus.requestFocus,
                    validator: (value) => validateEmail(value.trim()) ? null : 'Invalid email',
                  ),
                  const SizedBox(height: 30),
                  InputField(
                    hint: 'Password',
                    value: "",
                    controller: phoneController,
                    focusNode: passwordFocus,
                    isPassword: true,
                    textInputAction: TextInputAction.go,
                    keyboardType: TextInputType.visiblePassword,
                    textCapitalization: TextCapitalization.none,
                    suffixText: 'Forgot password?',
                    onEditingComplete: () => formKey.currentState.validate(),
                  ),
                  const SizedBox(height: 30),

                  Material(
                    elevation: 5,
                    color: Colors.transparent,
                    child: ActionButton(
                      label: Text(
                        "Search",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
                      ),
                      minimumSize: Size(MediaQuery.of(context).size.width, 50),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        )),
      );
}
