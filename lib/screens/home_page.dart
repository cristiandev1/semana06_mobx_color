import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_color/screens/home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final HomeStore _homeStore = HomeStore();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: _homeStore.pickerColor,
            elevation: 0,
            title: const Text('Example Colors With Mobx'),
          ),
          body: Column(
            children: [
              Container(
                color: _homeStore.pickerColor,
                width: double.infinity,
                height: 300,
              ),
              const SizedBox(height: 10),
              ColorPicker(
                pickerColor: _homeStore.pickerColor,
                onColorChanged: _homeStore.onColorChanged,
              ),
            ],
          ),
        );
      }
    );
  }
}
