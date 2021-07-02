import 'package:flutter/material.dart';
import 'package:my_project/main.dart';
import 'package:my_project/screens/Account/account.dart';
import 'package:my_project/screens/Home/components/home_body.dart';

void main() => runApp(MyApp());

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

int _paginaActual = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginaActual == 0 ? HomeBody() : MyAccount(),
      bottomNavigationBar: BottomNavigationBar(
        //El BottomNavigationBar recibe un dato
        onTap: (index) {
          // El dato que recibe es index
          setState(() {
            //Lo que hacemos con el set state es que le pasamos el valor a _paginaActual que es la variable del current index
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined, size: 30),
              label: "Account"),
        ],
      ),
    );
  }
}
