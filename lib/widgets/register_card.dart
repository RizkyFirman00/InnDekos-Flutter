import 'package:flutter/material.dart';

class RegisterCard extends StatelessWidget {
  final VoidCallback onSwitch;

  const RegisterCard({super.key, required this.onSwitch});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Silahkan Buat Akun,",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        const Text(
          "Jangan masukin data tetangga ya...",
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
                labelText: 'Email',
                labelStyle: const TextStyle(fontWeight: FontWeight.w900),
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
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'No Telepon',
                labelStyle: const TextStyle(fontWeight: FontWeight.w900),
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
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: const TextStyle(fontWeight: FontWeight.w900),
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
            const SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(fontWeight: FontWeight.w900),
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none),
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
              ),
            ),
          ],
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
                  backgroundColor: WidgetStatePropertyAll(Color(0xff5843BE))),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Register",
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
        Center(
          child: SizedBox(
            width: 170,
            child: ElevatedButton(
              onPressed: onSwitch,
              child: const Text(
                "Sudah punya akun?",
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
