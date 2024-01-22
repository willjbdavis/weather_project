import 'package:flutter/material.dart';
import 'package:weather_project/common/simple_vm_state.dart';
import 'package:weather_project/features/home/pages/home/home_page_loaded.dart';
import 'package:weather_project/features/home/pages/home/home_page_vm.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Weather Snapshot'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xff3399ff),
              Color(0xffffb56b),
              Color(0xfff39060),
              Color(0xffe16b5c),
              Color(0xffca485c),
              Color(0xffac255e),
              Color(0xff870160),
              Color(0xff5b0060),
              Color(0xff1f005c),
            ],
            // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
        child: ChangeNotifierProvider<HomePageVM>(
          create: (_) => HomePageVM(),
          child: Consumer<HomePageVM>(builder: (context, vm, _) {

            switch (vm.state) {
              case SimpleVMState.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case SimpleVMState.loaded:
              return const SingleChildScrollView(
                child: HomePageLoaded(),
              );
              case SimpleVMState.error:
                return const Center(child: Text('There was an error loading the weather.'));
            }
          }),
        ),
      ),
    );
  }
}
