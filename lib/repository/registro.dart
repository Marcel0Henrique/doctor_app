import 'package:doctor_app/repository/repo_registro.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Registro implements RepoRegistro {
  @override
  bool? sucesso;

  @override
  String? mensagemErro;

  @override
  cadastrar(usuarioNome, email, senha) async {
    final usuario = ParseUser.createUser(usuarioNome, senha, email);
    var response = await usuario.signUp();

    if (response.success) {
      sucesso = true;
    } else {
      sucesso = false;
      mensagemErro = response.error?.message;
    }
  }
}
