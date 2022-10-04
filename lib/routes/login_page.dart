import 'package:avaliacaoflutter/routes/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:avaliacaoflutter/routes/home_page.dart';
import 'package:avaliacaoflutter/routes/login_page.dart';
import 'package:avaliacaoflutter/model/login_class.dart';

import '../routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  State<LoginPage> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  // invocado quando o form for removido da árvore de widgets
  // isso permite liberar qualquer recurso que o widget esteja usando
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // Identificador do Formulário na árvore de Widgets
  // Usaremos para realizar validação dos inputs
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Log in',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
              color: Color(0xFF626364)),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF3E3E40),
            size: 15,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => HomePage())));
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Form(
          key: _key,
          child: Wrap(runSpacing: 20, children: [
            Text(emailController.text),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                // Passamos um callback para validar a string inserida no campo
                validator: _validateEmail,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: 'password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                obscureText: true,
                validator: _validatePassword,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: Color(0xff7156FF),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: 'Poppins'),
                ),
                onTap: () {},
              ),
            ),
            Column(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                      top: 100,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: RichText(
                      text: TextSpan(
                          text: 'By continuing, you agree to our ',
                          style: TextStyle(color: Colors.black),
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'Terms of Service',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff7156FF)),
                            ),
                            TextSpan(text: ' and '),
                            TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff7156FF))),
                          ]),
                    )),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xff7156FF),
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins'),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(RouterGenerator.profilePage);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  String? _validateEmail(String? value) {
    if (value?.isEmpty ?? false) {
      return "O campo não pode ser vazio";
    } else {
      return null;
    }
  }

  String? _validatePassword(String? value) {
    if (value != null && value.length < 8) {
      return "Digite pelo menos 8 caracteres!";
    } else {
      return null;
    }
  }

  void _login() {
    // A _key será útil aqui para invocarmos a validação dos formulário.
    if (_key.currentState?.validate() ?? false) {
      final email = emailController.text;
      final password = passwordController.text;

      final login = LoginClass(
        user: email,
        password: password,
      );
    } else {
      // Mostra um erro ou algum alerta!
    }
  }
}
