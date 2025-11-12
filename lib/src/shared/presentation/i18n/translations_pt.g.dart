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

	late final TranslationsSplashPt splash = TranslationsSplashPt._(_root);

	/// pt: 'Ocorreu um problema com sua solicitação. Revise seus dados e tente novamente.'
	String get genericError => 'Ocorreu um problema com sua solicitação. Revise seus dados e tente novamente.';

	/// pt: 'Você inseriu um valor inválido. Revise seus dados e tente novamente.'
	String get invalidRequest => 'Você inseriu um valor inválido. Revise seus dados e tente novamente.';
}

// Path: splash
class TranslationsSplashPt {
	TranslationsSplashPt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// pt: 'Aguarde enquanto configuramos seu App'
	String get title => 'Aguarde enquanto configuramos seu App';
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
			case 'splash.title': return 'Aguarde enquanto configuramos seu App';
			case 'genericError': return 'Ocorreu um problema com sua solicitação. Revise seus dados e tente novamente.';
			case 'invalidRequest': return 'Você inseriu um valor inválido. Revise seus dados e tente novamente.';
			default: return null;
		}
	}
}

