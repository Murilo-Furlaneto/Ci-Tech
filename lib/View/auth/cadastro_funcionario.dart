import 'package:flutter/material.dart';

import '../menu_page.dart';

class CadastroFuncionario extends StatefulWidget {
  const CadastroFuncionario({Key? key}) : super(key: key);

  @override
  State<CadastroFuncionario> createState() => _CadastroFuncionarioState();
}

class _CadastroFuncionarioState extends State<CadastroFuncionario> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _name = TextEditingController();
  final _areaTrab = TextEditingController();
  final _cargo = TextEditingController();
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
            height: MediaQuery.of(context).size.height * 0.7,
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
                      'Cadastro',
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
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: SizedBox(
                            height: 50,
                            child: TextFormField(
                              controller: _name,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: 'Nome',
                                icon: const Icon(Icons.person),
                              ),
                              validator: (value) {
                                if (value!.trim().isEmpty) {
                                  return 'Preencha o campo nome';
                                }
                                if (value.length < 4) {
                                  return ' Informe um nome correto';
                                }

                                return null;
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: SizedBox(
                            height: 50,
                            child: TextFormField(
                              controller: _email,
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: SizedBox(
                            height: 50,
                            child: TextFormField(
                              obscureText: _isVisible,
                              controller: _password,
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: SizedBox(
                            height: 50,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _cargo,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: 'Cargo',
                                icon: const Icon(Icons.file_copy),
                              ),
                              validator: (value) {
                                if (value!.trim().isEmpty) {
                                  return 'Preencha o campo Cargo';
                                }

                                return null;
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: SizedBox(
                            height: 50,
                            child: TextFormField(
                              controller: _areaTrab,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                labelText: 'Area de atuação',
                                icon: const Icon(Icons.file_copy),
                              ),
                              validator: (value) {
                                if (value!.trim().isEmpty) {
                                  return 'Preencha o campo';
                                }

                                return null;
                              },
                            ),
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
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
