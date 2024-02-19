//importM
import 'package:flutter/material.dart';
//stfulW
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Stack(
        children: [
          Fondo(),
          Contenido(),

        ],
      )

    );
  }
}

//statelessW
class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( //min propiedad may widget, los wid aceptan propiedades
      decoration: BoxDecoration(gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 125, 190, 243),
          Colors.blue,
        ],
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
      )),
    );
  }
}

//StatefulW 
class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Login',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
          ),
          
          SizedBox(height: 5,),

          Text( 'Bienvenido a tu cuenta',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            letterSpacing: 1.5,
          ),
          ),

          Datos(),

        ],
      ),
    );
  }
}

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Text('Email',
         style: TextStyle(
          color: Colors.black ,
          fontWeight: FontWeight.bold,
          fontSize: 15,
          ),
          ),
         const SizedBox(height: 5,),

          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'micorreo@micorreo.com'
          ),
          ),
          const SizedBox(height: 5,),

        const Text('Password',
         style: TextStyle(
          color: Colors.black ,
          fontWeight: FontWeight.bold,
          fontSize: 15,
          ),
          ),
          const SizedBox(height: 5,),
          TextFormField(
            obscureText: true,
            decoration:  InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'password',
              suffixIcon: IconButton(
                icon:  const Icon( Icons.remove_red_eye_outlined),
              onPressed: () => {},
              )
          ),
          ),
          const SizedBox(height: 5,),


        ],
      ),
    );
  }
}