import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:octonote/application/constants/colors.dart';
import 'package:octonote/domain/models/component/component.dart';
import 'package:octonote/presentation/octo_editor/view/widgets/url_input_pop_up.dart';

class AddComponentButton extends StatelessWidget {
  const AddComponentButton({Key? key, required this.onComponentSelected}) : super(key: key);

  final void Function(ComponentContent) onComponentSelected;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const AddComponentButtonContent(),
      onPressed: () async {
        await showDialog(
          barrierColor: Colors.transparent,
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              elevation: 8.0,
              title: Row(
                children: [
                  Text(
                    'Liste des composants', // FIXME: Trad
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
              children: <Widget>[
                const Divider(),
                ComponentSelector(
                  onComponentSelected: onComponentSelected,
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
        borderRadius: BorderRadius.circular(5),
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

class ComponentSelector extends StatelessWidget {
  const ComponentSelector({Key? key, required this.onComponentSelected}) : super(key: key);

  final void Function(ComponentContent) onComponentSelected;

  @override
  Widget build(BuildContext context) {
    final List<ComponentContent> allDefaultComponentsTypes = [
      const ComponentContent.text(content: ""),
      const ComponentContent.title1(content: ""),
      const ComponentContent.title2(content: ""),
      const ComponentContent.title3(content: ""),
      const ComponentContent.bulletedList(content: ""),
      const ComponentContent.numberedList(content: ""),
      const ComponentContent.citation(content: ""),
      const ComponentContent.image(content: ""),
      const ComponentContent.todo(content: ""),
    ];
    return SizedBox(
      width: 300,
      height: 300,
      child: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          final componentType = allDefaultComponentsTypes[index];
          return ComponentContentTile(
            onComponentSelected: (type) async {
              final component = await _onComponentSelected(context, type);
              onComponentSelected(component);
            },
            type: componentType,
            assetName: _getAssetName(componentType),
            name: _getComponentName(componentType),
            description: _getComponentDescription(componentType),
          );
        },
      ),
    );
  }

  Future<ComponentContent> _onComponentSelected(BuildContext context, ComponentContent type) async {
    return type.map(
      text: (comp) => comp,
      title1: (comp) => comp,
      title2: (comp) => comp,
      title3: (comp) => comp,
      bulletedList: (comp) => comp,
      numberedList: (comp) => comp,
      citation: (comp) => comp,
      image: (comp) async {
        final String? url = await showDialog<String?>(
          barrierColor: Colors.transparent,
          context: context,
          builder: (BuildContext context) => const UrlInputPopUp(),
        );
        return comp.copyWith(content: url ?? "");
      },
      todo: (comp) => comp,
    );
  }

  String _getAssetName(ComponentContent type) {
    return type.map(
      text: (_) => "assets/svg/text.svg",
      title1: (_) => "assets/svg/title1.svg",
      title2: (_) => "assets/svg/title2.svg",
      title3: (_) => "assets/svg/title3.svg",
      bulletedList: (_) => "assets/svg/bulletedList.svg",
      numberedList: (_) => "assets/svg/numberedList.svg",
      citation: (_) => "assets/svg/citation.svg",
      image: (_) => "assets/svg/image.svg",
      todo: (_) => "assets/svg/todo.svg",
    );
  }

  String _getComponentName(ComponentContent type) {
    return type.map(
      text: (_) => "Texte", //FIXME: Trad
      title1: (_) => "Titre 1",
      title2: (_) => "Titre 2",
      title3: (_) => "Titre 3",
      bulletedList: (_) => "Liste à puces",
      numberedList: (_) => "Liste numérotée",
      citation: (_) => "Citation",
      image: (_) => "Image",
      todo: (_) => "Tâche",
    );
  }

  String _getComponentDescription(ComponentContent type) {
    return type.map(
      text: (_) => "Écrivez du texte.", //FIXME: Trad
      title1: (_) => "Titre de grande taille",
      title2: (_) => "Titre de moyenne taille",
      title3: (_) => "Titre de petite taille",
      bulletedList: (_) => "Créez une liste à puces",
      numberedList: (_) => "Créez une liste numérotée",
      citation: (_) => "Parfait pour les extraits de texte",
      image: (_) => "Importez une mage depuis une URL",
      todo: (_) => "Créez une tâche",
    );
  }
}

class ComponentContentTile extends StatelessWidget {
  const ComponentContentTile({
    Key? key,
    required this.assetName,
    required this.name,
    required this.description,
    required this.type,
    required this.onComponentSelected,
  }) : super(key: key);
  final String assetName;
  final String name;
  final String description;
  final ComponentContent type;
  final void Function(ComponentContent) onComponentSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onComponentSelected(type),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: OctonoteColors.secondaryColor,
              ),
              child: SvgPicture.asset(assetName),
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  name,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
