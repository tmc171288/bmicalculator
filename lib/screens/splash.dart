import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:calculate_app/screens/input_page.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  Splash1State createState() => Splash1State();
}

class Splash1State extends State<Splash1> {
  @override
  void initState() {
    super.initState();
    // Chuyển trang sau khi animation kết thúc (3 giây)
    Future.delayed(const Duration(seconds: 5), () {
      // Kiểm tra xem widget còn mounted không (tránh lỗi)
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => InputPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 253, 253),
      body: Center(
        child: Lottie.asset("assets/Confetti.json", width: 300, height: 300),
      ),
    );
  }
}
