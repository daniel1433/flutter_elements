import 'package:curso_fernando/const/constant.widgets.dart';
import 'package:curso_fernando/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<StatefulWidget> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double currentValue = 200;
  bool valueCk = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ConstantElements.getAppbar("Slider Page"),
      body: Column(children: [
        Slider.adaptive(
          max: 600,
          value: currentValue,
          min: 50,
          activeColor: AppTheme.primary,
          divisions: 10,
          onChanged: !valueCk
              ? null
              : (value) {
                  currentValue = value;
                  // debugPrint(value.toString());
                  setState(() {});
                },
        ),
        Checkbox(
            activeColor: AppTheme.primary,
            value: valueCk,
            onChanged: (value) => setState(() {
                  valueCk = !valueCk;
                })),
        CheckboxListTile(
            activeColor: AppTheme.primary,
            title: Text(valueCk ? "Inhabilitar" : "Habilitar"),
            value: valueCk,
            tristate: true,
            onChanged: (value) => setState(() {
                  valueCk = !valueCk;
                })),
        Switch.adaptive(
            activeColor: AppTheme.primary,
            value: valueCk,
            onChanged: (value) => setState(() {
                  valueCk = !valueCk;
                })),
        SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: Text(valueCk ? "Inhabilitar" : "Habilitar"),
            value: valueCk,
            onChanged: (value) => setState(() {
                  valueCk = !valueCk;
                })),
        const AboutListTile(),
        Expanded(
          child: SingleChildScrollView(
            child: FadeInImage(
              placeholder: const AssetImage('assets/images/loader.gif'),
              image: const NetworkImage(
                  "https://www.pngmart.com/files/13/Luffy-PNG-Free-Download.png"),
              // image:
              //     const NetworkImage("https://www.pngmart.com/files/21/2B-PNG.png"),
              fit: BoxFit.cover,
              width: currentValue,
            ),
          ),
        )
      ]),
    );
  }
}
