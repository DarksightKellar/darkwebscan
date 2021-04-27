import 'package:flutter/material.dart' show required;

abstract class DatabaseService {
  /// `collection` may be the same as `key` if necessary, for when the
  /// data being created is not necessarily part of a collection.
  Future<void> create({@required dynamic collection, @required String key, dynamic value});

  /// Always return a Map with a 'data' field containing the requested data
  /// The 'data' value will contain the value of `notFoundDefault` in case
  /// no matching item is found in cache
  Future<Map<String, dynamic>> retrieve({
    @required dynamic collection,
    String key,
    @required dynamic notFoundDefault,
  });

  Future<void> update({@required dynamic collection, @required String key, dynamic value});

  Future<void> delete({@required dynamic collection, String key});

  Future<void> clearData();
}
