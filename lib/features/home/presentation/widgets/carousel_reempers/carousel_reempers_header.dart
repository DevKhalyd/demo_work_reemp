import 'package:flutter/material.dart';

import '../../../../../core/widgets/mini_widgets.dart';
import '../../../domain/entities/carousel_rempers_entitie.dart';

class HeaderCarousel extends StatelessWidget {
  const HeaderCarousel({
    Key key,
    @required this.hRD,
  }) : super(key: key);

  final HeaderRemperData hRD;

  @override
  Widget build(BuildContext context) {
    CustomText dateWidget = CustomText(
      hRD.date,
      isBold: hRD.isBold,
    );

    CustomText reempersWidget = CustomText(
      hRD.totalReempers.toString(),
      isBold: hRD.isBold,
    );
    
    return Row(
      children: [
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [CustomText('Mes/año'), dateWidget],
        )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [CustomText('Reempers Referidos'), reempersWidget],
          ),
        )),
      ],
    );
  }
}
