///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsPt = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// pt: 'Amigo Secreto'
	String get appName => 'Amigo Secreto';

	/// pt: 'Ocorreu um problema com sua solicitação. Revise seus dados e tente novamente.'
	String get genericError => 'Ocorreu um problema com sua solicitação. Revise seus dados e tente novamente.';

	/// pt: 'Você inseriu um valor inválido. Revise seus dados e tente novamente.'
	String get invalidRequest => 'Você inseriu um valor inválido. Revise seus dados e tente novamente.';

	late final TranslationsSplashPt splash = TranslationsSplashPt._(_root);
	late final TranslationsOnboardingPt onboarding = TranslationsOnboardingPt._(_root);
	late final TranslationsFormValidationsPt formValidations = TranslationsFormValidationsPt._(_root);
}

// Path: splash
class TranslationsSplashPt {
	TranslationsSplashPt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// pt: 'Aguarde enquanto configuramos seu App'
	String get title => 'Aguarde enquanto configuramos seu App';
}

// Path: onboarding
class TranslationsOnboardingPt {
	TranslationsOnboardingPt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsOnboardingIntroPt intro = TranslationsOnboardingIntroPt._(_root);
	late final TranslationsOnboardingCreateAccountPt createAccount = TranslationsOnboardingCreateAccountPt._(_root);
	late final TranslationsOnboardingLoginPt login = TranslationsOnboardingLoginPt._(_root);
	late final TranslationsOnboardingValidationPt validation = TranslationsOnboardingValidationPt._(_root);
}

// Path: formValidations
class TranslationsFormValidationsPt {
	TranslationsFormValidationsPt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// pt: 'Esse campo não pode estar vazio'
	String get required => 'Esse campo não pode estar vazio';

	/// pt: 'Insira nome e sobrenome'
	String get fullName => 'Insira nome e sobrenome';

	/// pt: 'Insira no mínimo {value} caracteres'
	String minLength({required Object value}) => 'Insira no mínimo ${value} caracteres';

	/// pt: 'Insira no máximo {value} caracteres'
	String maxLength({required Object value}) => 'Insira no máximo ${value} caracteres';
}

// Path: onboarding.intro
class TranslationsOnboardingIntroPt {
	TranslationsOnboardingIntroPt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// pt: 'Seja bem-vindo'
	String get title => 'Seja bem-vindo';

	/// pt: 'Crie seu grupo de amigo secreto de maneira rápida e fácil. Adicione amigos e familiares diretamente de seus contatos!'
	String get subtitle => 'Crie seu grupo de amigo secreto de maneira rápida e fácil. Adicione amigos e familiares diretamente de seus contatos!';

	/// pt: 'Começar'
	String get startLabel => 'Começar';

	/// pt: 'Não quero me cadastrar'
	String get startAnonymousLabel => 'Não quero me cadastrar';
}

// Path: onboarding.createAccount
class TranslationsOnboardingCreateAccountPt {
	TranslationsOnboardingCreateAccountPt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// pt: 'Crie sua conta'
	String get title => 'Crie sua conta';

	/// pt: 'Nome'
	String get name => 'Nome';

	/// pt: 'País'
	String get country => 'País';

	/// pt: 'Número de telefone'
	String get phone => 'Número de telefone';

	/// pt: 'Você receberá um SMS para validar o acesso.'
	String get phoneHelperText => 'Você receberá um SMS para validar o acesso.';

	/// pt: 'Registrar-se'
	String get registerLabel => 'Registrar-se';

	/// pt: 'Já tenho uma conta'
	String get alreadyRegistered => 'Já tenho uma conta';
}

// Path: onboarding.login
class TranslationsOnboardingLoginPt {
	TranslationsOnboardingLoginPt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// pt: 'Entrar'
	String get title => 'Entrar';

	/// pt: 'Criar conta'
	String get create => 'Criar conta';

	/// pt: 'País'
	String get country => 'País';

	/// pt: 'Número de telefone'
	String get phone => 'Número de telefone';

	/// pt: 'Você receberá um SMS para validar o acesso.'
	String get phoneHelperText => 'Você receberá um SMS para validar o acesso.';
}

// Path: onboarding.validation
class TranslationsOnboardingValidationPt {
	TranslationsOnboardingValidationPt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// pt: 'Confirmar código de acesso'
	String get title => 'Confirmar código de acesso';

	/// pt: 'Código'
	String get code => 'Código';

	/// pt: 'Código enviado via SMS'
	String get codeHelperText => 'Código enviado via SMS';

	/// pt: 'Reenviar código'
	String get resendLabel => 'Reenviar código';

	/// pt: 'Confirmar'
	String get confirm => 'Confirmar';
}

/// The flat map containing all translations for locale <pt>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return _flatMapFunction$0(path);
	}

	dynamic _flatMapFunction$0(String path) {
		switch (path) {
			case 'appName': return 'Amigo Secreto';
			case 'genericError': return 'Ocorreu um problema com sua solicitação. Revise seus dados e tente novamente.';
			case 'invalidRequest': return 'Você inseriu um valor inválido. Revise seus dados e tente novamente.';
			case 'splash.title': return 'Aguarde enquanto configuramos seu App';
			case 'onboarding.intro.title': return 'Seja bem-vindo';
			case 'onboarding.intro.subtitle': return 'Crie seu grupo de amigo secreto de maneira rápida e fácil. Adicione amigos e familiares diretamente de seus contatos!';
			case 'onboarding.intro.startLabel': return 'Começar';
			case 'onboarding.intro.startAnonymousLabel': return 'Não quero me cadastrar';
			case 'onboarding.createAccount.title': return 'Crie sua conta';
			case 'onboarding.createAccount.name': return 'Nome';
			case 'onboarding.createAccount.country': return 'País';
			case 'onboarding.createAccount.phone': return 'Número de telefone';
			case 'onboarding.createAccount.phoneHelperText': return 'Você receberá um SMS para validar o acesso.';
			case 'onboarding.createAccount.registerLabel': return 'Registrar-se';
			case 'onboarding.createAccount.alreadyRegistered': return 'Já tenho uma conta';
			case 'onboarding.login.title': return 'Entrar';
			case 'onboarding.login.create': return 'Criar conta';
			case 'onboarding.login.country': return 'País';
			case 'onboarding.login.phone': return 'Número de telefone';
			case 'onboarding.login.phoneHelperText': return 'Você receberá um SMS para validar o acesso.';
			case 'onboarding.validation.title': return 'Confirmar código de acesso';
			case 'onboarding.validation.code': return 'Código';
			case 'onboarding.validation.codeHelperText': return 'Código enviado via SMS';
			case 'onboarding.validation.resendLabel': return 'Reenviar código';
			case 'onboarding.validation.confirm': return 'Confirmar';
			case 'formValidations.required': return 'Esse campo não pode estar vazio';
			case 'formValidations.fullName': return 'Insira nome e sobrenome';
			case 'formValidations.minLength': return ({required Object value}) => 'Insira no mínimo ${value} caracteres';
			case 'formValidations.maxLength': return ({required Object value}) => 'Insira no máximo ${value} caracteres';
			default: return null;
		}
	}
}

