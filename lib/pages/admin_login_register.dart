import 'package:flutter/material.dart';
import 'package:inndekos_flutter/widgets/login_card.dart';

class AdminLoginRegister extends StatefulWidget {
  const AdminLoginRegister({super.key});

  @override
  State<AdminLoginRegister> createState() => _AdminLoginRegisterState();
}

class _AdminLoginRegisterState extends State<AdminLoginRegister> {
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
                    Image.asset("assets/images/background_atas.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_circle_left_rounded,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 90,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: const Card(
                  color: Colors.white,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: LoginCard(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
