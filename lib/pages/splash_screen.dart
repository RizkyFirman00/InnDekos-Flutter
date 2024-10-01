import 'package:flutter/material.dart';
import 'package:inndekos_flutter/pages/admin_login_register.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/images/logo.png"),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Find Cozy House\nto Stay and Happy",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Stop membuang banyak waktu\npada tempat yang tidak habitable ...",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w100),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 156,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("EXPLORE NOW"),
                              style: ButtonStyle(
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17))),
                                  foregroundColor: const WidgetStatePropertyAll(
                                      Colors.white),
                                  backgroundColor: const WidgetStatePropertyAll(
                                      Color(0xff5843BE))),
                            ),
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          const Text(
                            "Explore tidak\nperlu login !",
                            style: TextStyle(
                              color: Color(0xff5843BE),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Ingin Menjadi\nBagian Dari Kami?",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Gabunglah dan rasakan\nkeuntungan yang melimpah ...",
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w100),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        width: 156,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const AdminLoginRegister(),
                              ),
                            );
                          },
                          child: const Text("JOIN US"),
                          style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17))),
                              foregroundColor:
                                  const WidgetStatePropertyAll(Colors.white),
                              backgroundColor: const WidgetStatePropertyAll(
                                  Color(0xff5843BE))),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150, // Adjust height as needed
                  color: const Color(0xffFF9376),
                ),
              ],
            ),
            Positioned(
              bottom: -80,
              right: -20,
              child: IgnorePointer(
                child: Image.asset(
                  "assets/images/house.png",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
