// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:pim_unip/View/auth/cadastro_cliente.dart';
import 'package:pim_unip/View/auth/cadastro_funcionario.dart';
import 'package:pim_unip/View/auth/login.dart';
import 'package:pim_unip/View/relatorios/relatorio.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff03191e),
        centerTitle: true,
        title: const Text('Menu'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  'Bem Vindo',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(20)),
            CardMenu(
              text: 'Cadastrar clientes',
              image: Image.asset('assets/images/cadastro.png'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CadastroCliente()));
              },
            ),
            CardMenu(
              text: 'Cadastrar funcionário',
              image: Image.asset('assets/images/cadastro.png'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CadastroFuncionario()));
              },
            ),
            CardMenu(
              text: 'Relatórios',
              image: Image.asset('assets/images/relatorio.png'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Relatorio()));
              },
            ),
            CardMenu(
              text: 'Voltar ao login',
              image: Image.asset('assets/images/menu_login.png'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Login()));
              },
            )
          ],
        ),
      ),
    );
  }
}

class CardMenu extends StatelessWidget {
  const CardMenu({
    Key? key,
    required this.text,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final Widget image;
  final VoidCallback onTap;
  //colorEAD2AC
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: const Color(0xff3E7CB1),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: SizedBox(
            width: 300,
            height: 100,
            child: Center(
              child: ListTile(
                leading: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                trailing: image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//decoration: const BoxDecoration(
            //gradient: LinearGradient(
             // colors: [
             //   Colors.cyan,
              //  Colors.indigo,
              //],
           // ),

           //blue - bleGrey