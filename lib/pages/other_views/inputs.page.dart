import 'package:curso_fernando/const/constant.widgets.dart';
import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class InputsPage extends StatelessWidget {
  const InputsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Jesus Daniel',
      'last_name': 'Pardo Serrato',
      'email': 'jdanielps013@gmail.com',
      'password': '1234567',
      'role': 'Administrador'
    };

    return Scaffold(
      appBar: ConstantElements.getAppbar("Inputs"),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CustomInputField(
                  formProperty: 'first_name',
                  formValues: formValues,
                  labelText: 'Nombre',
                  hintText: 'Nombre de usuario',
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomInputField(
                  formProperty: 'last_name',
                  formValues: formValues,
                  labelText: 'Apellido',
                  hintText: 'Apellido de usuario',
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomInputField(
                  formProperty: 'email',
                  formValues: formValues,
                  labelText: 'Email',
                  hintText: 'Apellido de usuario',
                  keyBoardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomInputField(
                  formProperty: 'password',
                  formValues: formValues,
                  labelText: 'Contraseña',
                  hintText: 'Apellido de usuario',
                  isPassword: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(
                        value: 'admin',
                        child: Text("Administrador"),
                      ),
                      DropdownMenuItem(
                        value: 'root',
                        child: Text("Super usuario"),
                      ),
                      DropdownMenuItem(
                        value: 'dev',
                        child: Text("Developer"),
                      ),
                      DropdownMenuItem(
                        value: 'jrdev',
                        child: Text("Jr. Developer"),
                      ),
                    ],
                    onChanged: (value) {
                      formValues["role"] = value.toString();
                    }),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      //Quitar el teclado
                      FocusScope.of(context).requestFocus(FocusNode());
                      // Valida los campos
                      if (!formKey.currentState!.validate()) {
                        debugPrint("Formulario no valido");
                      }

                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text("Guardar"))))
              ],
            ),
          )),
    );
  }
}
