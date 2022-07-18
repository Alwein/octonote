import 'package:flutter/material.dart';
import 'package:octonote/presentation/auth/widgets/auth_widgets.dart';

class UrlInputPopUp extends StatefulWidget {
  const UrlInputPopUp({Key? key}) : super(key: key);

  @override
  State<UrlInputPopUp> createState() => _UrlInputPopUpState();
}

class _UrlInputPopUpState extends State<UrlInputPopUp> {
  String url = "";

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              OctoTextForm(
                hintText: "Adresse URL de l'image...", // FIXME: trad
                onChanged: (value) {
                  url = value;
                },
              ),
              const SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.zero,
                ),
                onPressed: () => Navigator.of(context).pop(url),
                child: const UrlInputValidationButton(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class UrlInputValidationButton extends StatelessWidget {
  const UrlInputValidationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      ),
      child: const Text(
        "Ajouter l'image", // FIXME:Trad
        style: TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }
}
