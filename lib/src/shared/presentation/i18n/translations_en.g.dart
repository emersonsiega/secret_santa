///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsEn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	@override 
	TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

	// Translations
	@override String get appName => 'Secret Santa';
	@override String get genericError => 'Something went wrong with your request. Review your data and try again.';
	@override String get invalidRequest => 'You\'ve entered an invalid value. Review your data and try again.';
	@override late final _TranslationsSplashEn splash = _TranslationsSplashEn._(_root);
	@override late final _TranslationsOnboardingEn onboarding = _TranslationsOnboardingEn._(_root);
	@override late final _TranslationsFormValidationsEn formValidations = _TranslationsFormValidationsEn._(_root);
}

// Path: splash
class _TranslationsSplashEn implements TranslationsSplashPt {
	_TranslationsSplashEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wait while we set up your App';
}

// Path: onboarding
class _TranslationsOnboardingEn implements TranslationsOnboardingPt {
	_TranslationsOnboardingEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingIntroEn intro = _TranslationsOnboardingIntroEn._(_root);
	@override late final _TranslationsOnboardingCreateAccountEn createAccount = _TranslationsOnboardingCreateAccountEn._(_root);
	@override late final _TranslationsOnboardingLoginEn login = _TranslationsOnboardingLoginEn._(_root);
	@override late final _TranslationsOnboardingValidationEn validation = _TranslationsOnboardingValidationEn._(_root);
}

// Path: formValidations
class _TranslationsFormValidationsEn implements TranslationsFormValidationsPt {
	_TranslationsFormValidationsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get required => 'This field must not be empty';
	@override String get fullName => 'Enter your full name';
	@override String minLength({required Object value}) => 'Enter at least ${value} characters';
	@override String maxLength({required Object value}) => 'Enter no more than ${value} characters';
}

// Path: onboarding.intro
class _TranslationsOnboardingIntroEn implements TranslationsOnboardingIntroPt {
	_TranslationsOnboardingIntroEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Welcome';
	@override String get subtitle => 'Create your Secret Santa group quickly and easily. Add friends and family directly from your contacts!';
	@override String get startLabel => 'Start';
	@override String get startAnonymousLabel => 'Start without account';
}

// Path: onboarding.createAccount
class _TranslationsOnboardingCreateAccountEn implements TranslationsOnboardingCreateAccountPt {
	_TranslationsOnboardingCreateAccountEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Create account';
	@override String get name => 'Name';
	@override String get country => 'Country';
	@override String get phone => 'Phone number';
	@override String get phoneHelperText => 'You will receive an SMS to validate your access.';
	@override String get registerLabel => 'Register';
	@override String get alreadyRegistered => 'I already have an account';
}

// Path: onboarding.login
class _TranslationsOnboardingLoginEn implements TranslationsOnboardingLoginPt {
	_TranslationsOnboardingLoginEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Log in';
	@override String get create => 'Create account';
	@override String get country => 'Country';
	@override String get phone => 'Phone number';
	@override String get phoneHelperText => 'You will receive an SMS to validate your access.';
}

// Path: onboarding.validation
class _TranslationsOnboardingValidationEn implements TranslationsOnboardingValidationPt {
	_TranslationsOnboardingValidationEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confirm access token';
	@override String get code => 'Token';
	@override String get codeHelperText => 'Token sent via SMS';
	@override String get resendLabel => 'Resend';
	@override String get confirm => 'Confirm';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		return _flatMapFunction$0(path);
	}

	dynamic _flatMapFunction$0(String path) {
		switch (path) {
			case 'appName': return 'Secret Santa';
			case 'genericError': return 'Something went wrong with your request. Review your data and try again.';
			case 'invalidRequest': return 'You\'ve entered an invalid value. Review your data and try again.';
			case 'splash.title': return 'Wait while we set up your App';
			case 'onboarding.intro.title': return 'Welcome';
			case 'onboarding.intro.subtitle': return 'Create your Secret Santa group quickly and easily. Add friends and family directly from your contacts!';
			case 'onboarding.intro.startLabel': return 'Start';
			case 'onboarding.intro.startAnonymousLabel': return 'Start without account';
			case 'onboarding.createAccount.title': return 'Create account';
			case 'onboarding.createAccount.name': return 'Name';
			case 'onboarding.createAccount.country': return 'Country';
			case 'onboarding.createAccount.phone': return 'Phone number';
			case 'onboarding.createAccount.phoneHelperText': return 'You will receive an SMS to validate your access.';
			case 'onboarding.createAccount.registerLabel': return 'Register';
			case 'onboarding.createAccount.alreadyRegistered': return 'I already have an account';
			case 'onboarding.login.title': return 'Log in';
			case 'onboarding.login.create': return 'Create account';
			case 'onboarding.login.country': return 'Country';
			case 'onboarding.login.phone': return 'Phone number';
			case 'onboarding.login.phoneHelperText': return 'You will receive an SMS to validate your access.';
			case 'onboarding.validation.title': return 'Confirm access token';
			case 'onboarding.validation.code': return 'Token';
			case 'onboarding.validation.codeHelperText': return 'Token sent via SMS';
			case 'onboarding.validation.resendLabel': return 'Resend';
			case 'onboarding.validation.confirm': return 'Confirm';
			case 'formValidations.required': return 'This field must not be empty';
			case 'formValidations.fullName': return 'Enter your full name';
			case 'formValidations.minLength': return ({required Object value}) => 'Enter at least ${value} characters';
			case 'formValidations.maxLength': return ({required Object value}) => 'Enter no more than ${value} characters';
			default: return null;
		}
	}
}

