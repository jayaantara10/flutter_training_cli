import 'package:flutter/material.dart';
import 'package:flutter_training_cli/infrastructure/theme/font.style.dart';
import 'package:flutter_training_cli/presentation/core/widgets/buttons/button.widget.dart';

import 'package:get/get.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() => TMDBButton(
            label: 'Count: ${controller.count.value}',
            icon: Icons.save,
            onPressed: () => {controller.increment()})),
      ),
    );
  }
}
