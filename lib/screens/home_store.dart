import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
    @observable
    Color pickerColor = Color(0xff443a49);

    @action
    void onColorChanged(Color value){
      pickerColor = value;
    }
}
