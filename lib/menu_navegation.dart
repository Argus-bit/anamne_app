import 'package:anamne_app/profile.dart';
import 'package:flutter/material.dart';




// Definição da classe MyHomePage
class NavegationMenu extends StatefulWidget {
  const NavegationMenu({super.key, required int initialIndex});
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<NavegationMenu> {
  int _selectedIndex = 0;


  final List<Widget> _pages = 
  [
    ProfileScreen(),
  ];

  void _onItemTapped(int index) 
  {
    setState(() {
      _selectedIndex = index;
    });
  }
  

  

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType
            .fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Pedido',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Ofertas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(255, 252, 252, 252),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        onTap: _onItemTapped,
      ),
    );
  }
}

class PedidoPage extends StatelessWidget {
  const PedidoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página Pedido'),
    );
  }
}

class OfertasPage extends StatelessWidget {
  const OfertasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página Ofertas'),
    );
  }
}