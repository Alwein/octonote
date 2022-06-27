import 'package:flutter/material.dart';
import 'package:octonote/application/constants/colors.dart';

class AddComponentButton extends StatelessWidget {
  const AddComponentButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const AddComponentButtonContent(),
      onPressed: () async {
        await showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: const Text('Select assignment'),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "Pop");
                  },
                  child: const Text('Treasury department'),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, "Pop");
                  },
                  child: const Text('State department'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class AddComponentButtonContent extends StatelessWidget {
  const AddComponentButtonContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color textColor = Color(0xff706E59);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: OctonoteColors.secondaryColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            Icons.add_rounded,
            color: textColor,
            size: 20,
          ),
          SizedBox(width: 10),
          Text(
            "Nouveau composant",
            style: TextStyle(fontSize: 14, color: textColor),
          ),
        ],
      ),
    );
  }
}
