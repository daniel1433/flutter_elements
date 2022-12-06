import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? iconData;
  final IconData? iconDataPrex;
  final IconData? iconDataSufix;
  final TextInputType? keyBoardType;
  final bool? isPassword;

  //Propiedad del formulario
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.iconDataPrex,
    this.iconDataSufix,
    this.iconData,
    this.keyBoardType,
    this.isPassword,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      // initialValue: "Input Prueba",
      textCapitalization: TextCapitalization.words,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // autovalidateMode: AutovalidateMode.always,
      validator: (value) {
        if (value == null) return "Este campo es requerido";
        // return 'Hola mundo';
        return value.length < 3 ? 'Mínimo de caracteres 3' : null;
      },
      keyboardType: keyBoardType,
      initialValue: formValues[formProperty],
      obscureText: isPassword ?? false,
      onChanged: ((value) {
        formValues[formProperty] = value;
        debugPrint(value);
      }),
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // counterText: '3 Caracteres',
        prefixIcon: iconDataPrex != null ? Icon(iconDataPrex) : null,
        suffixIcon: iconDataSufix != null
            ? ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            icon: const Icon(Icons.emoji_emotions),
                            title: const Text("Alerta ome"),
                            content: const Text("Aquí vamos ome"),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text("¡Atras!"))
                            ],
                          ));
                },
                child: Icon(iconDataSufix))
            : null,
        icon: iconData != null ? Icon(iconData) : null,
        // focusedBorder: const OutlineInputBorder(
        //     borderSide: BorderSide(color: Colors.green)),
        // border: const OutlineInputBorder(
        //     borderRadius: BorderRadius.only(
        //         bottomLeft: Radius.circular(10),
        //         topRight: Radius.circular(10))),
      ),
    );
  }
}
