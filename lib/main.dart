import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 核心：初始化亚克力效果
  await Window.initialize();
  await Window.setEffect(effect: WindowEffect.acrylic, color: Color(0xCC000000));
  runApp(const SisyphusApp());
}

class SisyphusApp extends StatelessWidget {
  const SisyphusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.transparent, // 背景透明以显示毛玻璃
      ),
      home: const SisyphusHome(),
    );
  }
}

class SisyphusHome extends StatelessWidget {
  const SisyphusHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // 这一圈就是您满意的青瓷蓝细边框
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF708090), width: 0.5),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '“SI VIS AMARI, AMA.”',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 4,
                  color: Color(0xFFF0F0F0),
                  fontFamily: 'Georgia',
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'If you wish you be loved, love.',
                style: TextStyle(color: Color(0xFF708090), fontSize: 16),
              ),
              const SizedBox(height: 40),
              // 模拟您老版本功能的极简按钮
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF708090)),
                ),
                child: const Text('START PROCESSING', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
