import 'package:ecommerce_dm_flutter/src/presentation/pages/auth/login/widgets/DefaultTextField.dart';
import 'package:flutter/material.dart';

const Color colorPrincipalDM = Color(0xFFC89B3C);

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/logdm.jpg',
                  width: 120,
                  height: 120,
                ),
                Text(
                  'Accesorios D&M',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: colorPrincipalDM,
                  ),
                ),
                Text(
                  'Nunca subestimes el poder de un buen accesorio',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blueGrey,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: DefaultTextField(
                    label: 'Correo electrónico',
                    icon: Icons.email,
                    onChanged: (text) {
                    print('Text: ${text}'); // Handle text change
                    }
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: DefaultTextField(
                    label: 'Contraseña',
                    icon: Icons.lock,
                    onChanged: (text) {
                    print('Text: ${text}'); // Handle text change
                    },
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '¿Olvidaste tu contraseña?',
                      style: TextStyle(
                        color: colorPrincipalDM,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'INICIAR SESIÓN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorPrincipalDM,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Acceso Administrador',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.black12,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        '¿No tienes cuenta?',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: colorPrincipalDM),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        'CREAR CUENTA',
                        style: TextStyle(
                          color: colorPrincipalDM,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}