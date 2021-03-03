import 'package:meta/meta.dart';

class CarouselRempersEntitie {
  const CarouselRempersEntitie({@required this.hRD, @required this.reempers});

  final HeaderRemperData hRD;
  final List<ReemperInfo> reempers;

  static CarouselRempersEntitie generateExample() {
    final useHRD =
        HeaderRemperData(date: 'Febrero, 2021', totalReempers: 5, isBold: true);

    final listReemperData = [
      ReemperInfo(
          address: 'Medellin, Antioquia,Colombia',
          name: 'Dra. Maria de los angéles',
          profession: 'Odontólogo',
          username: '@dra.angeles',
          urlProfilePic:
              'https://s3.us-east-1.amazonaws.com/doctoralia.com.mx/doctor/8e9bb1/8e9bb11ffb2a96535dcfc2c4209a9119_large.jpg'),
      ReemperInfo(
          address: 'Medellin, Antioquia,Colombia',
          name: 'Dr. Angeles Robertp',
          profession: 'Odontólogo',
          username: '@dr.angeles',
          urlProfilePic:
              'https://pbs.twimg.com/profile_images/1269134975519150081/c1I-lraJ.jpg'),
    ];

    return CarouselRempersEntitie(hRD: useHRD, reempers: listReemperData);
  }

  static CarouselRempersEntitie generateExample2() {
    final useHRD = HeaderRemperData(
      date: 'Enero, 2021',
      totalReempers: 2,
    );

    final listReemperData = [
      ReemperInfo(
          address: 'Medellin, Antioquia,Colombia',
          name: 'Dra. Maria de los angéles',
          profession: 'Odontólogo',
          username: '@dra.angeles',
          urlProfilePic:
              'https://s3.us-east-1.amazonaws.com/doctoralia.com.mx/doctor/8e9bb1/8e9bb11ffb2a96535dcfc2c4209a9119_large.jpg'),
      ReemperInfo(
          address: 'Medellin, Antioquia,Colombia',
          name: 'Dr. Angeles Robertp',
          profession: 'Odontólogo',
          username: '@dr.angeles',
          urlProfilePic:
              'https://pbs.twimg.com/profile_images/1269134975519150081/c1I-lraJ.jpg'),
    ];

    return CarouselRempersEntitie(hRD: useHRD, reempers: listReemperData);
  }
}

/// Contains the HeaderData of the carousel
class HeaderRemperData {
  const HeaderRemperData({
    @required this.date,
    @required this.totalReempers,
    this.isBold = false,
  });
  final String date;
  final int totalReempers;
  final bool isBold;
}

/// The info of each Reemper
class ReemperInfo {
  const ReemperInfo({
    this.rating = 4.0,
    @required this.name,
    @required this.username,
    @required this.profession,
    @required this.address,
    @required this.urlProfilePic,
  });

  final double rating;
  final String name, username, profession, address, urlProfilePic;

  static ReemperInfo generateExample() {
    return ReemperInfo(
        address: 'Medellin, Antioquia,Colombia',
        name: 'Dr. Angeles Robertp',
        profession: 'Odontólogo',
        username: '@dr.angeles',
        urlProfilePic:
            'https://pbs.twimg.com/profile_images/1269134975519150081/c1I-lraJ.jpg');
  }
}
