import 'package:DarkwebScan/core/platform/app_image.dart';
import 'package:DarkwebScan/core/presentation/widgets/action_button.dart';
import 'package:DarkwebScan/core/presentation/widgets/input_field.dart';
import 'package:DarkwebScan/features/darkweb_scan/presentation/state/darkweb_scan_cubit.dart';
import 'package:DarkwebScan/features/darkweb_scan/presentation/pages/scan_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CredEntryView extends StatefulWidget {
  const CredEntryView({Key key}) : super(key: key);

  @override
  _CredEntryViewState createState() => _CredEntryViewState();
}

class _CredEntryViewState extends State<CredEntryView> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  final phoneFocus = FocusNode();

  void performSearch() {
    FocusScope.of(context).unfocus();

    if (formKey.currentState.validate()) {
      context.read<DarkwebScanCubit>().scanWeb(
            phone: phoneController.text,
            email: emailController.text,
          );
    }
  }

  static bool validateEmail(String value) {
    if (value.isEmpty) {
      return true;
    }

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
                  // ///////////////
                  InputField(
                    hint: 'Email',
                    value: "",
                    controller: emailController,
                    autocorrect: false,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.none,
                    onEditingComplete: phoneFocus.requestFocus,
                    validator: (value) => validateEmail(value.trim()) ? null : 'Invalid email',
                  ),
                  const SizedBox(height: 30),
                  InputField(
                    hint: 'Mobile/Cell Phone number',
                    value: "",
                    controller: phoneController,
                    focusNode: phoneFocus,
                    textInputAction: TextInputAction.go,
                    keyboardType: TextInputType.number,
                    textCapitalization: TextCapitalization.none,
                    onEditingComplete: () => formKey.currentState.validate(),
                  ),
                  const SizedBox(height: 30),

                  Material(
                    elevation: 5,
                    color: Colors.transparent,
                    child: Builder(
                      builder: (context) => BlocConsumer<DarkwebScanCubit, DarkwebScanState>(
                        listener: (_, state) {
                          state.maybeWhen(
                            loaded: (payload) {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => const ScanResults()),
                              );
                            },
                            error: (payload) => Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text(payload.error),
                              ),
                            ),
                            orElse: () {},
                          );
                        },
                        builder: (_, state) => ActionButton(
                          label: state.maybeWhen(
                            loading: (_) => const CircularProgressIndicator(),
                            orElse: () => Text(
                              "Search",
                              style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
                            ),
                          ),
                          minimumSize: Size(MediaQuery.of(context).size.width, 50),
                          onPressed: performSearch,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )),
      );
}
