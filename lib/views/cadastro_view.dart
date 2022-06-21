import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/custom_textformfield.dart';

class CadastroView extends StatelessWidget {
  const CadastroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Text(
            "Registro",
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
                      CustomTextFormField(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: CustomTextFormField(),
                      ),
                      CustomTextFormField(),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.width * 0.06),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Cadastrar",
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.043),
                            ),
                          ),
                        ),
                      ),
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
