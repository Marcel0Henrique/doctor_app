import 'package:doctor_app/controllers/login_controller.dart';
import 'package:doctor_app/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width * 0.17,
            ),
          ),
          Text(
            "Tudo o que você precisa está aqui",
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width * 0.06,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.08),
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      CustomTextFormField(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Consumer<LoginController>(
                        builder: (context, _loginController, child) =>
                            CustomTextFormField(
                          hintText: "Senha",
                          obscureText: _loginController.obscureText,
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed: _loginController.showPasword,
                              icon: _loginController.visibleIcon),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, "recuperarSenha"),
                          child: Text(
                            "Esqueci minha senha",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.047),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.width * 0.06),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.043),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Não tem uma conta?",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.047),
                          ),
                          TextButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, "/registro"),
                            child: Text(
                              "Registre-se",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.047),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
