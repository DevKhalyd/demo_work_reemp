import 'package:flutter/material.dart';

import '../../../../../core/widgets/mini_widgets.dart';
import '../../../domain/entities/carousel_rempers_entitie.dart';
import 'carousel_reempers_header.dart';

class CarouseldReempers extends StatelessWidget {
  const CarouseldReempers({Key key, @required this.cRE}) : super(key: key);

  final CarouselRempersEntitie cRE;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      height: 220,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(child: HeaderCarousel(hRD: cRE.hRD)),
          Space(0.01),
          Expanded(
              flex: 2,
              child: _BodyCarousel(
                reempers: cRE.reempers,
              )),
        ],
      ),
    );
  }
}

class _BodyCarousel extends StatelessWidget {
  const _BodyCarousel({
    Key key,
    @required this.reempers,
  }) : super(key: key);

  final List<ReemperInfo> reempers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: reempers.length,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) {
          final reemper = reempers[i];
          return _CarouselBodyContainer(reemper: reemper);
        });
  }
}

/// Contains only the container
class _CarouselBodyContainer extends StatelessWidget {
  const _CarouselBodyContainer({
    Key key,
    @required this.reemper,
  }) : super(key: key);

  final ReemperInfo reemper;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 290,
        height: 10,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.55),
            border: Border.all(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: _CarouselBodyInfo(
          reemper: reemper,
        ),
      ),
    );
  }
}

/// Contains the info in the container
class _CarouselBodyInfo extends StatelessWidget {
  const _CarouselBodyInfo({
    Key key,
    @required this.reemper,
  }) : super(key: key);

  final ReemperInfo reemper;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CircleAvatar(
          radius: 32.5,
          backgroundImage: NetworkImage(reemper.urlProfilePic),
        )),
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //First line in th info body
                  Row(
                    children: [
                      //Stars
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _IconStar(),
                          _IconStar(),
                          _IconStar(),
                          _IconStar(),
                        ],
                      ),
                      Space(
                        0.01,
                        isHorizontal: true,
                      ),
                      CustomText(
                        reemper.rating.toString(),
                        fontSize: 11,
                        isItalic: true,
                      )
                    ],
                  ),
                  //SecondLine
                  CustomText(
                    reemper.name,
                    isBold: true,
                  ),
                  CustomText(
                    reemper.username,
                    fontSize: 13,
                    isBold: true,
                  ),
                  _ProfessionText(profession: reemper.profession),
                  CustomText(
                    reemper.address,
                    fontSize: 13,
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

class _ProfessionText extends StatelessWidget {
  const _ProfessionText({
    Key key,
    @required this.profession,
  }) : super(key: key);

  final String profession;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Container(
            height: 12,
            width: 16,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
          ),
          Space(0.01, isHorizontal: true),
          CustomText(
            profession,
            fontSize: 13,
          ),
        ],
      ),
    );
  }
}

class _IconStar extends StatelessWidget {
  const _IconStar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.black,
      size: 16,
    );
  }
}
