// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStore, Store {
  late final _$pickerColorAtom =
      Atom(name: '_HomeStore.pickerColor', context: context);

  @override
  Color get pickerColor {
    _$pickerColorAtom.reportRead();
    return super.pickerColor;
  }

  @override
  set pickerColor(Color value) {
    _$pickerColorAtom.reportWrite(value, super.pickerColor, () {
      super.pickerColor = value;
    });
  }

  late final _$_HomeStoreActionController =
      ActionController(name: '_HomeStore', context: context);

  @override
  void onColorChanged(Color value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.onColorChanged');
    try {
      return super.onColorChanged(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pickerColor: ${pickerColor}
    ''';
  }
}
