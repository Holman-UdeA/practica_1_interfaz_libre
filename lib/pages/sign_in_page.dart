import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obscurePassword = true;
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/images/Logo.png"),
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.contact_mail),
                    labelText: "Correo electrónico",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _password,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password_rounded),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                    labelText: "Contraseña",
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF0F8555),
                    fixedSize: const Size(200, 50),
                    textStyle: const TextStyle(
                      fontSize: 20
                    )
                  ),
                  onPressed: () {},
                  child: const Text("Iniciar sesión"),
                ),
                const SizedBox(height: 40),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xFF0F8555),
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("¿Primera vez en SportLink? Registrate"),
                ),
                const SizedBox(height: 12),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xFF0F8555),
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                  child: Text("¿Olvidaste tu contraseña?"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
