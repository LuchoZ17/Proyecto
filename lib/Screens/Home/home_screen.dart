import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/utillities/Home_Utilities/Icons/icons.dart';
import 'package:my_project/utillities/Home_Utilities/TextStyle/style_const.dart';

import '../../main.dart';

void main() => runApp(MyApp());

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildHomeCardTF() {
    //Este es el build del card
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ), //En forma lo que nos permite redondear bordes
      elevation: 4, //Esto hace que de un efecto de sombra al card
      child: Column(
        //El card tiene un hijo que es una columna par así ubicar más fácil las cosas.
        mainAxisAlignment: MainAxisAlignment
            .center, //Un alignment para procurar que todo se centre
        children: <Widget>[
          SvgPicture.asset(
            //Una imagen desde la libreria svg pero descargado, asset.
            KidBodyIcon, //Este es nuestro icono guardado en utilities
            height: 128, //La altura
          ),
          Text(
            'MI CUERPO',
            style:
                cardTextStyle, //Nuestro estilo de texto guardado en utilities
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //Get size, esto nos ayuda a conseguir el tamaño de pantalla

    return Scaffold(
      //Scaffold para agregar un montón de widgets y ocupar toda la pantalla con él.
      body: Stack(
        //Un stack para acomodar los widgets unos encima de otros
        children: <Widget>[
          Container(
            height: size.height *
                .3, //Este container tendrá el tamaño de la 3era parte de la pantalla
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment
                    .topCenter, //Un alignment para arreglar el espacio que falte por rellenar
                image: AssetImage(
                    'assets/images/top_header.png'), //Imagen desde el asset
              ),
            ),
          ),
          SafeArea(
            //Esto nos ayuda para llenar el espacio de los móviles con noch
            child: Padding(
              padding: EdgeInsets.all(
                  16.0), //Este padding nos ayuda a acomodar nuestro header
              child: Column(
                children: <Widget>[
                  Container(
                    //El container nos permite ubicar horizontalmente y verticalmente
                    height: 64, //Altura del container
                    margin: EdgeInsets.only(bottom: 30.0), //Padding de abajo
                    child: Row(
                      //Fila donde pondremos horizontalmente nuestros widgets
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius:
                                40.0, //Aquí irá la imagen del avatar que escoga
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Pepito Perez',
                              style: TextStyle(
                                  fontFamily: 'Montserrat Medium',
                                  color: Colors.white),
                            ),
                            Text(
                              '77157787',
                              style: TextStyle(
                                  fontFamily: 'Montserrat Medium',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10, //Espacio horizontal entre los Card
                      crossAxisSpacing: 10, //Espacio vertical entre los card
                      crossAxisCount: 2,
                      primary: false,
                      children: <Widget>[
                        _buildHomeCardTF(), //Buils del card
                        _buildHomeCardTF(),
                        _buildHomeCardTF(),
                        _buildHomeCardTF(),
                        _buildHomeCardTF(),
                        _buildHomeCardTF(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
