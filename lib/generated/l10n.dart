// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Fruit market`
  String get titleSplash {
    return Intl.message(
      'Artificial app',
      name: 'titleSplash',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `E Shpping`
  String get title1 {
    return Intl.message(
      'E Shpping',
      name: 'title1',
      desc: '',
      args: [],
    );
  }

  /// `Explore our products and buy them`
  String get subtitle {
    return Intl.message(
      'Explore our products and buy them',
      name: 'subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Delivery on the way`
  String get title2 {
    return Intl.message(
      'Delivery on the way',
      name: 'title2',
      desc: '',
      args: [],
    );
  }

  /// `Get your order and be delivered`
  String get subtitle2 {
    return Intl.message(
      'Get your order and be delivered',
      name: 'subtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Arrived`
  String get title3 {
    return Intl.message(
      'Delivery Arrived',
      name: 'title3',
      desc: '',
      args: [],
    );
  }

  /// `Order is Arrived at your location`
  String get subtitle3 {
    return Intl.message(
      'Order is Arrived at your location',
      name: 'subtitle3',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebooklogin {
    return Intl.message(
      'Facebook',
      name: 'facebooklogin',
      desc: '',
      args: [],
    );
  }

  /// `  Google`
  String get googlelogin {
    return Intl.message(
      '  Google',
      name: 'googlelogin',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enteryourname {
    return Intl.message(
      'Enter your name',
      name: 'enteryourname',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enteryourphone {
    return Intl.message(
      'Enter your phone number',
      name: 'enteryourphone',
      desc: '',
      args: [],
    );
  }

  /// `Enter your address`
  String get enteryouraddress {
    return Intl.message(
      'Enter your address',
      name: 'enteryouraddress',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
