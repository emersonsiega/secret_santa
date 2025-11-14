part of 'onboarding_screen.dart';

class _CreateAccountView extends ConsumerStatefulWidget {
  const _CreateAccountView();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __CreateAccountViewState();
}

class __CreateAccountViewState extends ConsumerState<_CreateAccountView> {
  final nameFocus = FocusNode();
  final phoneFocus = FocusNode();
  final form = FormGroup(
    {
      'name': FormControl<String>(
        validators: [
          Validators.required,
          Validators.pattern(r'^[A-Za-z]+ [A-Za-z]+$'),
        ],
      ),
      'phone': FormControl<PhoneNumber>(
        validators: [PhoneValidators.required, PhoneValidators.valid],
      ),
    },
  );

  @override
  void dispose() {
    nameFocus.dispose();
    phoneFocus.dispose();
    form.dispose();
    super.dispose();
  }

  String get name => form.controls['name']?.value as String? ?? '';
  String get phone => (form.controls['phone']?.value as PhoneNumber?)?.international ?? '';

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(color: AppColors.lightText);

    return ReactiveForm(
      formGroup: form,
      child: Column(
        children: [
          Text(
            t.onboarding.createAccount.title,
            style: context.textTheme.headlineLarge?.copyWith(fontWeight: .w500).merge(style),
          ),
          const SizedBox(height: 10),
          ReactiveTextField<String>(
            formControlName: 'name',
            focusNode: nameFocus,
            scrollPadding: .only(bottom: 100),
            decoration: InputDecoration(
              labelText: t.onboarding.createAccount.name,
              alignLabelWithHint: true,
            ),
            onEditingComplete: (control) => context.nextFocus(),
            keyboardType: .name,
            textInputAction: .next,
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            validationMessages: {
              ValidationMessage.pattern: (_) => t.formValidations.fullName,
            },
          ),
          const SizedBox(height: 10),
          CustomPhoneFormField.light(
            formControlName: 'phone',
            formControl: form.controls['phone'] as FormControl<PhoneNumber>,
            label: t.onboarding.createAccount.phone,
            helperText: t.onboarding.createAccount.phoneHelperText,
            focusNode: phoneFocus,
            textInputAction: .done,
          ),
          const Spacer(),
          LargeTextButton(
            label: t.onboarding.createAccount.alreadyRegistered,
            icon: FontAwesomeIcons.user,
            onPressed: () {
              ref.read(_onboardingStepProvider.notifier).changeTo(.login);
            },
          ),
          const SizedBox(height: 10),
          LargeElevatedButton(
            label: t.onboarding.createAccount.registerLabel,
            icon: FontAwesomeIcons.paperPlane,
            onPressed: () {
              form.markAllAsTouched();
              if (form.valid) {
                ref.read(onboardingViewModelProvider.notifier).createAccount(name, phone);
              }
            },
          ),
        ],
      ),
    );
  }
}
