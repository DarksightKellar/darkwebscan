import 'package:hydrated_bloc/hydrated_bloc.dart';

class FakeHydratedStorage implements Storage {
  final Map _storage = <String, dynamic>{};

  @override
  Future<void> clear() async => _storage.clear();

  @override
  Future<void> delete(String key) async => _storage.remove(key);

  @override
  dynamic read(String key) => _storage[key];

  @override
  Future<void> write(String key, dynamic value) async => _storage['key'] = value;
}
