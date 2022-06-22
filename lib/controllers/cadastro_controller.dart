import 'dart:ffi';

import 'package:doctor_app/repository/registro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroController with ChangeNotifier {
  TextEditingController _usuarioController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  TextEditingController get usuarioControlle => _usuarioController;
  TextEditingController get emailController => _emailController;
  TextEditingController get senhaController => _senhaController;

  Registro _registro = Registro();

  cadastrar(context) async {
    await _registro.cadastrar(_usuarioController.text.trim(),
        _emailController.text.trim(), _senhaController.text.trim());

    if (_registro.sucesso!) {
      cadastroSucesso(context);
      limparCampos();
    } else {
      cadastroFalha(context, _registro.mensagemErro!);
      limparCampos();
    }
  }

  cadastroSucesso(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Sucesso!"),
          content: Text("Cadastro realizado com sucesso!"),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/login"),
              child: Text("Ok"),
            )
          ],
        );
      },
    );
  }

  cadastroFalha(context, String erro) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Ops.."),
          content: Text(erro),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Ok"),
            )
          ],
        );
      },
    );
  }

  limparCampos() {
    _usuarioController.clear();
    _emailController.clear();
    _senhaController.clear();
  }
}
