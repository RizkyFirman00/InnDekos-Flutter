import 'package:flutter/material.dart';
import 'package:inndekos_flutter/widgets/login_card.dart';
import '../widgets/register_card.dart';

class AdminLoginRegister extends StatefulWidget {
  const AdminLoginRegister({super.key});

  @override
  State<AdminLoginRegister> createState() => _AdminLoginRegisterState();
}

class _AdminLoginRegisterState extends State<AdminLoginRegister> {
  bool isLogin = true;

  void toggleCard() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/background_atas.png",
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: const Icon(
                            Icons.keyboard_arrow_left_rounded,
                            color: Colors.black,
                            size: 36,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 90,
              right: 0,
              left: 0,
              child: SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height - 110,
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 0.5,
                        blurRadius: 8,
                        offset: Offset(0, -5),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: isLogin
                          ? LoginCard(onSwitch: toggleCard)
                          : RegisterCard(onSwitch: toggleCard),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
