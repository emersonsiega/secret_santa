part of 'onboarding_screen.dart';

class _LoginView extends ConsumerStatefulWidget {
  const _LoginView();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __LoginViewState();
}

class __LoginViewState extends ConsumerState<_LoginView> {
  final form = FormGroup(
    {
      'phone': FormControl<PhoneNumber>(
        validators: [PhoneValidators.required, PhoneValidators.valid],
      ),
    },
  );

  @override
  void dispose() {
    form.dispose();
    super.dispose();
  }

  String get phone => (form.controls['phone']?.value as PhoneNumber?)?.international ?? '';

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(color: AppColors.lightText);

    return ReactiveForm(
      formGroup: form,
      child: Column(
        children: [
          Text(
            t.onboarding.login.title,
            style: context.textTheme.headlineLarge?.copyWith(fontWeight: .w500).merge(style),
          ),
          const SizedBox(height: 10),
          CustomPhoneFormField.light(
            formControlName: 'phone',
            formControl: form.controls['phone'] as FormControl<PhoneNumber>,
            label: t.onboarding.login.phone,
            helperText: t.onboarding.login.phoneHelperText,
            textInputAction: .done,
          ),

          const Spacer(),
          LargeTextButton(
            label: t.onboarding.login.create,
            icon: FontAwesomeIcons.user,
            onPressed: () {
              ref.read(_onboardingStepProvider.notifier).changeTo(.createAccount);
            },
          ),
          const SizedBox(height: 10),
          LargeElevatedButton(
            label: t.onboarding.login.title,
            icon: FontAwesomeIcons.paperPlane,
            onPressed: () {
              form.markAllAsTouched();

              if (form.valid) {
                ref.read(onboardingViewModelProvider.notifier).logInWithPhoneNumber(phone);
              }
            },
          ),
        ],
      ),
    );
  }
}
