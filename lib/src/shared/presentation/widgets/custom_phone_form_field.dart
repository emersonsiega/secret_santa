import 'package:flutter/material.dart';

import 'package:devicelocale/devicelocale.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
import 'package:secret_santa/src/shared/presentation/design_system/colors.dart';
import 'package:secret_santa/src/shared/presentation/extensions/build_context.dart';

sealed class CustomPhoneFormField extends ConsumerStatefulWidget {
  const CustomPhoneFormField({super.key});

  const factory CustomPhoneFormField.light({
    required FormControl<PhoneNumber> formControl,
    required String formControlName,
    required String label,
    FocusNode? focusNode,
    String? helperText,
    TextInputAction? textInputAction,
  }) = _LightPhoneFormField;
}

class _LightPhoneFormField extends CustomPhoneFormField {
  final FormControl<PhoneNumber> formControl;
  final String formControlName;
  final String label;
  final FocusNode? focusNode;
  final String? helperText;
  final TextInputAction? textInputAction;

  const _LightPhoneFormField({
    required this.formControl,
    required this.formControlName,
    required this.label,
    this.focusNode,
    this.helperText,
    this.textInputAction,
  }) : super();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __LightPhoneFormFieldState();
}

class __LightPhoneFormFieldState extends ConsumerState<_LightPhoneFormField> {
  Future<String> getCurrentCountryCode() async {
    try {
      final locale = await Devicelocale.currentAsLocale;
      return locale?.countryCode ?? 'US';
    } catch (_) {
      return 'US';
    }
  }

  IsoCode isoFromCountryCode(String countryCode) {
    try {
      return IsoCode.values.firstWhere(
        (iso) => iso.name.toUpperCase() == countryCode.toUpperCase(),
        orElse: () => IsoCode.US,
      );
    } catch (_) {
      return IsoCode.US;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final locale = await getCurrentCountryCode();
      final defaultIso = isoFromCountryCode(locale);
      widget.formControl.value = PhoneNumber(isoCode: defaultIso, nsn: '');
    });
  }

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(color: AppColors.lightText);

    return Theme(
      data: context.theme.copyWith(
        textTheme: TextTheme(bodyLarge: style),
        colorScheme: context.theme.colorScheme.copyWith(
          secondary: AppColors.lightText.shade700,
        ),
        dividerTheme: DividerThemeData(
          color: Colors.transparent,
        ),
      ),
      child: ReactivePhoneFormField<PhoneNumber>(
        formControlName: widget.formControlName,
        focusNode: widget.focusNode,
        scrollPadding: .only(bottom: 100),
        decoration: InputDecoration(
          labelText: widget.label,
          alignLabelWithHint: true,
          helperText: widget.helperText,
        ),
        countryButtonStyle: CountryButtonStyle(
          textStyle: style,
          dropdownIconColor: AppColors.lightText,
        ),
        countrySelectorNavigator: CountrySelectorNavigator.draggableBottomSheet(
          backgroundColor: AppColors.primary,
          searchBoxDecoration: InputDecoration(
            filled: false,
            contentPadding: .symmetric(vertical: 8, horizontal: 10),
            prefixIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: AppColors.lightText,
              size: 20,
            ),
          ),
          titleStyle: context.textTheme.titleMedium?.merge(style),
          subtitleStyle: context.textTheme.bodyMedium?.copyWith(color: AppColors.lightText.shade600),
          sortCountries: true,
        ),
        valueAccessor: PhoneNumberValueAccessor(),
        keyboardType: .phone,
        textInputAction: widget.textInputAction,
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}
