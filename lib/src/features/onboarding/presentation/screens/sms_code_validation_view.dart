part of 'onboarding_screen.dart';

class _SMSCodeValidationView extends ConsumerStatefulWidget {
  const _SMSCodeValidationView();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __SMSCodeValidationViewState();
}

class __SMSCodeValidationViewState extends ConsumerState<_SMSCodeValidationView> {
  final form = FormGroup(
    {
      'code': FormControl<String>(
        validators: [
          Validators.required,
          Validators.minLength(6),
          Validators.maxLength(6),
        ],
      ),
    },
  );

  Timer? _resendTimer;
  final _remainingSeconds = ValueNotifier(0);

  @override
  void dispose() {
    _resendTimer?.cancel();
    _remainingSeconds.dispose();
    form.dispose();
    super.dispose();
  }

  void _startResendTimer() {
    _resendTimer?.cancel();
    _remainingSeconds.value = 60;

    _resendTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        _remainingSeconds.value = 0;
        return;
      }

      if (_remainingSeconds.value > 0) {
        _remainingSeconds.value = _remainingSeconds.value - 1;
      } else if (_remainingSeconds.value == 0) {
        timer.cancel();
      }
    });
  }

  String _formatTime(int seconds) {
    return seconds.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(color: AppColors.lightText);

    return ReactiveForm(
      formGroup: form,
      child: Column(
        children: [
          Text(
            t.onboarding.validation.title,
            style: context.textTheme.headlineLarge?.copyWith(fontWeight: .w500).merge(style),
          ),
          const SizedBox(height: 10),
          ReactiveTextField<String>(
            formControlName: 'code',
            scrollPadding: .only(bottom: 100),
            decoration: InputDecoration(
              labelText: t.onboarding.validation.code,
              helperText: t.onboarding.validation.codeHelperText,
              alignLabelWithHint: true,
              counterText: '',
            ),
            maxLength: 6,
            keyboardType: .number,
            textInputAction: .done,
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
          ),

          const Spacer(),
          ValueListenableBuilder(
            valueListenable: _remainingSeconds,
            builder: (context, value, child) {
              return Row(
                mainAxisAlignment: .center,
                children: [
                  if (value != 0) Spacer(),
                  Center(
                    child: LargeTextButton(
                      label: t.onboarding.validation.resendLabel,
                      icon: FontAwesomeIcons.rotateLeft,
                      onPressed: value == 0
                          ? () {
                              if (ref.read(onboardingViewModelProvider).value case SmsSentState(
                                :final user,
                              ) when user is RegularUser) {
                                form.reset();
                                ref.read(onboardingViewModelProvider.notifier).logInWithPhoneNumber(user.phoneNumber);
                                _startResendTimer();
                              }
                            }
                          : null,
                    ),
                  ),
                  if (value != 0)
                    Expanded(
                      child: Text(
                        _formatTime(value),
                        style: context.textTheme.titleMedium?.copyWith(
                          color: AppColors.lightText,
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
          const SizedBox(height: 10),
          LargeElevatedButton(
            label: t.onboarding.validation.confirm,
            icon: FontAwesomeIcons.paperPlane,
            onPressed: () {
              form.markAllAsTouched();

              if (form.valid) {
                final code = form.controls['code']?.value as String? ?? '';
                ref.read(onboardingViewModelProvider.notifier).validate(code);
              }
            },
          ),
        ],
      ),
    );
  }
}
