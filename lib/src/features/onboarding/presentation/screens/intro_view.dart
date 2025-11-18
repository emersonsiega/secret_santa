part of 'onboarding_screen.dart';

class _IntroView extends ConsumerWidget {
  const _IntroView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = TextStyle(color: AppColors.lightText);

    return Column(
      spacing: 20,
      children: [
        Text(
          t.onboarding.intro.title,
          style: context.textTheme.headlineLarge?.copyWith(fontWeight: .w500).merge(style),
        ),
        Text(
          t.onboarding.intro.subtitle,
          textAlign: .center,
          style: context.textTheme.bodyLarge?.merge(style),
        ),
        Spacer(),
        LargeTextButton(
          label: t.onboarding.intro.startAnonymousLabel,
          icon: FontAwesomeIcons.share,
          onPressed: () {
            ref.read(onboardingViewModelProvider.notifier).continueWithoutAccount();
          },
        ),
        LargeElevatedButton(
          label: t.onboarding.intro.startLabel,
          icon: FontAwesomeIcons.gift,
          onPressed: () {
            ref.read(onboardingViewModelProvider.notifier).start();
            ref.read(_onboardingStepProvider.notifier).next();
          },
        ),
      ],
    );
  }
}
