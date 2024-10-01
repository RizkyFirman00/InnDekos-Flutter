import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Selamat Datang,",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        const Text(
          "Loginnya jangan pake akun tetangga ya...",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
        ),
        const SizedBox(
          height: 18,
        ),
        Image.asset("assets/images/login_house.png"),
        const SizedBox(
          height: 18,
        ),
        Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.w900
                ),
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w900
                ),
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none
                ),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const SizedBox(
          height: 40,
        ),
        Center(
          child: SizedBox(
            width: 210,
            child: ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                backgroundColor: WidgetStatePropertyAll(Color(0xff5843BE))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(Icons.login),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Center(
          child: SizedBox(
            width: 170,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Belum punya akun?",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
