import 'package:DarkwebScan/core/platform/app_image.dart';
import 'package:DarkwebScan/core/platform/app_theme.dart';
import 'package:DarkwebScan/core/presentation/widgets/action_button.dart';
import 'package:DarkwebScan/core/presentation/widgets/input_field.dart';
import 'package:DarkwebScan/features/darkweb_scan/domain/models/breach_model.dart';
import 'package:DarkwebScan/features/darkweb_scan/presentation/state/darkweb_scan_cubit.dart';
import 'package:DarkwebScan/features/dashboard/presentation/widgets/breach_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScanResults extends StatefulWidget {
  const ScanResults({Key key}) : super(key: key);

  @override
  _CredEntryViewState createState() => _CredEntryViewState();
}

class _CredEntryViewState extends State<ScanResults> {
  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchFocus.requestFocus();

    breaches = context.read<DarkwebScanCubit>().state.payload.breaches;
  }

  final searchFocus = FocusNode();

  List<BreachModel> breaches = [];

  void search(String query) {
    breaches = context
        .read<DarkwebScanCubit>()
        .state
        .payload
        .breaches
        .where(
          (b) => (query?.isEmpty ?? true)
              ? true
              : b.name.toLowerCase().contains(query.toLowerCase()) ||
                  b.domain.toLowerCase().contains(query.toLowerCase()) ||
                  b.title.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppImages.darkweb,
                width: 120,
                height: 120,
              ),
              const SizedBox(height: 15),
              Text(
                "${context.watch<DarkwebScanCubit>().state.payload.breaches.length} breaches",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: AppColors.error,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              InputField(
                hint: '',
                value: "",
                controller: searchController,
                autocorrect: false,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                textCapitalization: TextCapitalization.none,
                suffix: InkWell(
                  onTap: () => search(searchController.text),
                  child: Container(
                    width: 100,
                    decoration: const BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                          // bott
                        )),
                    child: Center(
                      child: Text(
                        "Search",
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                ),
                // validator: (value) => validateEmail(value.trim()) ? null : 'Invalid email',
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: breaches.length,
                    itemBuilder: (_, i) => BreachTile(breaches[i]),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              BlocConsumer<DarkwebScanCubit, DarkwebScanState>(
                listener: (_, state) {
                  state.maybeWhen(
                    loaded: (payload) {
                      // Navigator.of(context).push(MaterialPageRoute(builder: (_) => ));
                    },
                    orElse: () {},
                  );
                },
                builder: (_, state) => ActionButton(
                  label: state.maybeWhen(
                    loading: (_) => const CircularProgressIndicator(),
                    orElse: () => Text(
                      "Repeat Weekly?",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
                    ),
                  ),
                  minimumSize: Size(MediaQuery.of(context).size.width, 50),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 30),
              BlocConsumer<DarkwebScanCubit, DarkwebScanState>(
                listener: (_, state) {
                  state.maybeWhen(
                    loaded: (payload) {
                      // Navigator.of(context).push(MaterialPageRoute(builder: (_) => ));
                    },
                    orElse: () {},
                  );
                },
                builder: (_, state) => ActionButton(
                  label: state.maybeWhen(
                    loading: (_) => const CircularProgressIndicator(),
                    orElse: () => Text(
                      "Done",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
                    ),
                  ),
                  minimumSize: Size(MediaQuery.of(context).size.width, 50),
                  onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
                ),
              )
            ],
          ),
        )),
      );
}
