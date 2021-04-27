import 'dart:ui';

import 'package:flutter/material.dart';

class AppStrings {
  static Locale locale = const Locale('en');

  // ERRORS
  static String get connectionTimeOut => _localizedValues[locale.languageCode][OpStringIds.connectionTimeOut];
  static String get genericExceptionMessage =>
      _localizedValues[locale.languageCode][OpStringIds.genericExceptionMessage];
  static String get noInternetMessage => _localizedValues[locale.languageCode][OpStringIds.noInternetMessage];
  static String get apiExceptionMessage => _localizedValues[locale.languageCode][OpStringIds.apiExceptionMessage];
  static String get apiBadRequestMessage => _localizedValues[locale.languageCode][OpStringIds.apiBadRequestMessage];
  static String get apiNotFoundMessage => _localizedValues[locale.languageCode][OpStringIds.apiNotFoundMessage];
  static String get networkError => _localizedValues[locale.languageCode][OpStringIds.networkError];
  static String get dbExceptionMessage => _localizedValues[locale.languageCode][OpStringIds.dbExceptionMessage];

  static final Map<String, Map<OpStringIds, String>> _localizedValues = {
    'en': {
      OpStringIds.connectionTimeOut: 'DarkWeb Scan is having issues connecting to the internet',
      OpStringIds.noInternetMessage: 'No internet access',
      OpStringIds.genericExceptionMessage: 'Hmm that didn\'t work. We\'re working on it!',
      OpStringIds.apiExceptionMessage: 'There was a problem contacting the server. Please try again later',
      OpStringIds.apiBadRequestMessage: 'There was a problem making the request to the server',
      OpStringIds.apiNotFoundMessage: 'Item not found',
      OpStringIds.dbExceptionMessage: 'There was a problem accessing cache',
      OpStringIds.networkError:
          'There was an error connecting to the internet. Please check your network connection and try again',
    },
  };
}

// KEYS STRICTLY FOR ACCESSING THE LOCALISED STRINGS WITHIN EACH LOCALE.
enum OpStringIds {
  connectionTimeOut,
  genericExceptionMessage,
  noInternetMessage,
  apiExceptionMessage,
  apiBadRequestMessage,
  apiNotFoundMessage,
  dbExceptionMessage,
  networkError,
}
