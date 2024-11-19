import 'package:flutter/material.dart';

import 'screens/saude/saude_home';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String userName = 'Visitante';
    final bool isLoggedIn = false;

    final iconColor = isLoggedIn ? Colors.black87 : Colors.grey;
    final iconArrowColor = isLoggedIn ? Colors.black54 : Colors.grey;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Perfil',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey.shade200,
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  isLoggedIn
                      ? 'Bem-vindo(a) de volta!'
                      : 'Acesse para aproveitar benefícios exclusivos',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    isLoggedIn ? 'Editar Perfil' : 'Entrar ou Cadastrar',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Divider(color: Colors.grey.shade300),
            _buildOptionTile(
                icon: Icons.person,
                title: 'Dados pessoais',
                iconColor: iconColor,
                arrowColor: iconArrowColor),
              _buildOptionTile(
                icon: Icons.local_hospital,
                title: 'Saúde e bem-estar',
                iconColor: iconColor,
                arrowColor: iconArrowColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HealthTrackerScreen()),
                  );
                },
              ),
            _buildOptionTile(
                icon: Icons.favorite_border,
                title: 'Favoritos',
                iconColor: iconColor,
                arrowColor: iconArrowColor),
            _buildOptionTile(
                icon: Icons.list_alt,
                title: 'Meus pedidos',
                iconColor: iconColor,
                arrowColor: iconArrowColor),
            _buildOptionTile(
                icon: Icons.receipt,
                title: 'Enviar receita digital',
                iconColor: iconColor,
                arrowColor: iconArrowColor),
            _buildOptionTile(
                icon: Icons.phone,
                title: 'Comprar pelo televendas',
                iconColor: iconColor,
                arrowColor: iconArrowColor),
            _buildOptionTile(
                icon: Icons.location_on,
                title: 'Endereço de entrega',
                iconColor: iconColor,
                arrowColor: iconArrowColor),
            const SizedBox(height: 30),
            Center(
              child: Column(
                children: const [
                  Text(
                    'Versão 1.0.0',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Desenvolvido por Flexdata',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

Widget _buildOptionTile({
  required IconData icon,
  required String title,
  required Color iconColor,
  required Color arrowColor,
  VoidCallback? onTap,
}) {
  return ListTile(
    leading: Icon(icon, color: iconColor),
    title: Text(
      title,
      style: const TextStyle(fontSize: 16, color: Colors.black),
    ),
    trailing: Icon(Icons.arrow_forward_ios, color: arrowColor, size: 16),
    onTap: onTap,
  );
}
}
