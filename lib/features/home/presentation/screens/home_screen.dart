import 'package:flutter/material.dart';
import 'package:workExample/core/widgets/mini_widgets.dart';
import 'package:workExample/features/home/domain/entities/carousel_rempers_entitie.dart';
import 'package:workExample/features/home/presentation/widgets/carousel_reempers/carousel_reempers.dart';

/// The first screen to show in the app
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBarCustom(),
      body: _BodyScreen(),
    );
  }
}

/// Contains the widgets to display in the body screen
class _BodyScreen extends StatelessWidget {
  const _BodyScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //TODO: Add items
          Space(0.05),
          _InfoText(),
          _TextField(),
          Space(0.025),
          _SubtitleMixed(),
          Space(0.005),
          CarouseldReempers(cRE: CarouselRempersEntitie.generateExample()),
          CarouseldReempers(cRE: CarouselRempersEntitie.generateExample2()),
          CarouseldReempers(cRE: CarouselRempersEntitie.generateExample()),
          CarouseldReempers(cRE: CarouselRempersEntitie.generateExample2()),
        ],
      ),
    );
  }
}

/// According to my knowledge all widgets should be split into widgets to handle in a best way
class _AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const _AppBarCustom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          size: 18,
          color: Colors.black,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: _TitleBold(
          title: 'Cupones Reemper pendientes',
        ));
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}

class _TitleBold extends StatelessWidget {
  const _TitleBold({Key key, @required this.title, this.fontSize = 16})
      : super(key: key);

  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ));
  }
}

class _InfoText extends StatelessWidget {
  const _InfoText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Este campo se encuentra vacío',
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.grey),
    );
  }
}

class _TextField extends StatelessWidget {
  const _TextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // NOTE: We can use the InputDecoration CLASS to put instructions to the user instead of use a subtitle
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16), child: TextFormField());
  }
}

class _SubtitleMixed extends StatelessWidget {
  const _SubtitleMixed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // We can use a consumer to update that method
        _TitleBold(
          title: 'Reempers Referidos con éxito (7)',
        ),
        Space(
          0.01,
          isHorizontal: true,
        ),
        Icon(
          Icons.info,
          color: Colors.grey,
          size: 12,
        )
      ],
    );
  }
}
