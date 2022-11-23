import 'package:flutter/material.dart';
import 'package:pim_unip/View/auth/cadastro_funcionario.dart';

import '../menu_page.dart';

class LoginFuncionario extends StatefulWidget {
  const LoginFuncionario({Key? key}) : super(key: key);

  @override
  State<LoginFuncionario> createState() => _LoginFuncionarioState();
}

class _LoginFuncionarioState extends State<LoginFuncionario> {
  final _formKey = GlobalKey<FormState>();
  final _email_controller = TextEditingController();
  final _password_controller = TextEditingController();
  late bool _isVisible;

  //função para ocultar e mostrar a senha
  @override
  void initState() {
    super.initState();
    _isVisible = true;
  }

  @override
  void dispose() {
    super.dispose();
    _formKey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03191e),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          SizedBox(
            height: 223,
            child: Image.asset(
              'assets/images/logo.png',
              height: 200,
              width: 300,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.67,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                )),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: TextFormField(
                            controller: _email_controller,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              labelText: 'Email',
                              icon: const Icon(Icons.email_sharp),
                            ),
                            validator: (value) {
                              if (value!.trim().isEmpty) {
                                return 'Preencha o campo de email';
                              }

                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: TextFormField(
                            obscureText: _isVisible,
                            controller: _password_controller,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: 'Senha',
                                icon: const Icon(Icons.lock),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isVisible = !_isVisible;
                                      });
                                    },
                                    icon: Icon(_isVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off))),
                            validator: (value) {
                              if (value!.trim().isEmpty) {
                                return 'Preencha o campo senha';
                              }
                              if (value.length < 3) {
                                return 'A senha precisa ter mais de 3 caracteres';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff1D3354),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) => const MenuPage())));
                              }
                            },
                            child: const Text(
                              'Entrar',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Esqueceu a senha
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Esqueceu a senha?',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),

                  //Divisor
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Não possui uma conta?',
                            style: TextStyle(fontSize: 16)),
                        TextButton(
                          child: const Text(
                            'Cadastre-se',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) =>
                                    const CadastroFuncionario())));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
