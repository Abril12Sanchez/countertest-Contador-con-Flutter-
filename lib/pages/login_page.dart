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
      decoration: const BoxDecoration(gradient: LinearGradient(
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

          Text( 'Welcome to your count',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            letterSpacing: 1.5,
          ),
          ),
          SizedBox(height:15),

          Datos(),
          

          SizedBox(height: 20,),

        Politica(),



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
  bool showPass=true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
       decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),

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
            obscureText: showPass,
            decoration:  InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Password',
              suffixIcon: IconButton(
                icon:  const Icon( Icons.remove_red_eye_outlined),
              onPressed: () => {
                setState((){
                  showPass == true ? showPass=false: showPass=true;
                })

              },
              )
          ),
          ),
          
         const  Remember(),
         const SizedBox(height: 30,),
         const Botones(),
        ],
        
      ),
     
    );
  }
}



// si va a tener funcionamiento  statefulW


class Remember extends StatefulWidget {
  const Remember({Key? key}) : super(key: key);

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: checked,
          onChanged: (value) {
            setState(() {
              checked = value ?? false;
            });
          },
        ),
        const Text('Remember me'),
        const Spacer(),
        TextButton(
          onPressed: () {
            // Navegar a la página de "forgot password"
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ForgotPasswordPage(),
              ),
            );
          },
          child: const Text(
            'Forgot Password?',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}

// Nueva página para "forgot password"
class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Center(
        child: Column( // Utilizamos un Column para tener múltiples hijos
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Text(
              'Pagina para recuperar contraseña',
              style: TextStyle(fontSize: 16), // Ajusta el tamaño del texto según tus necesidades
            ),
            const SizedBox(height: 20), // Espacio entre los elementos
            ElevatedButton(
              onPressed: () {
                // Navegar hacia atrás cuando se presiona el botón de "Volver"
                Navigator.of(context).pop();
              },
              child: const Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Remember Checkbox'),
      ),
      body: const Remember(),
    ),
  ));
}


// class Botones extends StatefulWidget {
//   const Botones({super.key});

//   @override
//   State<Botones> createState() => _BotonesState();
// }

// class _BotonesState extends State<Botones> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }


class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () => {},
            style: ButtonStyle(
              backgroundColor:  MaterialStateProperty.all<Color>(const Color(0xff142047)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
            ),
            child: const Text('Login', 
            style: TextStyle(color: Colors.white
            ),
            ),
            ),
          ),
          const SizedBox(height: 25,
          width: double.infinity,),
        const Text('or sign with',
        style: TextStyle(color: Colors.grey,),
        ),
        const SizedBox(height: 25,
          width: double.infinity,),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: () => {},
            child: const Text('Google', style: TextStyle(color: Color(0xff142047), 
            fontWeight: FontWeight.bold,
            fontSize: 18,),),
          ),
        ),
         const SizedBox(height: 15,
          width: double.infinity,),

         SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: () => {},
            child: const Text('Facebook', style: TextStyle(color: Color(0xff142047), 
            fontWeight: FontWeight.bold,
            fontSize: 18,),),
          ),
        ),

         const SizedBox(height: 15,
          width: double.infinity,),

      ],
    );
  }
}

class Politica extends StatelessWidget {
  const Politica({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Text ('Read user'),
      //  const Spacer(),
        TextButton(
          onPressed: ()=>{},
          child: const Text('Privacy Policy', style: TextStyle(fontSize: 15, color: Colors.white),),
          
        ),
      
      ],
    );
    
  }
}