import 'package:drosak_management/core/resources/assets_images_manager.dart';
import 'package:drosak_management/model/on_boarding/on_boarding_model.dart';

class ConstantsValues {
  static const double widthDesignScreen = 375;
  static const double heightDesignScreen = 812;
  static const String konBoardingText1 = "يمكنك إضافة  بعض المراحل التعليمية ";
  static const String konBoardingText2 =
      "يمكنك إضافة  بعض المجموعات لكل مرحلة من المراحل التعليمية ";
  static const String konBoardingText3 =
      "يمكنك إضافة  بعض الطلاب لكل جروب الموجودة في كل مرحلة تعليمية";
  static const String konBoardingText4 = "يمكنك إضافة حضور وغياب لكل طالب";
  static const String konBoardingText5 =
      "يمكنك إضافة  ما إذا كان الطالب دفع هذا الشهر أم لا وإضافة تاريخ الدفع";
}

class constList {
  static const List<OnBoardingModel> listImages = [
    OnBoardingModel(
        onBoardingImage: AssetsImagesManager.onBoardingImage1,
        onBoardingText: ConstantsValues.konBoardingText1),
    OnBoardingModel(
        onBoardingImage: AssetsImagesManager.onBoardingImage2,
        onBoardingText: ConstantsValues.konBoardingText2),
    OnBoardingModel(
        onBoardingImage: AssetsImagesManager.onBoardingImage3,
        onBoardingText: ConstantsValues.konBoardingText3),
    OnBoardingModel(
        onBoardingImage: AssetsImagesManager.onBoardingImage4,
        onBoardingText: ConstantsValues.konBoardingText4),
    OnBoardingModel(
        onBoardingImage: AssetsImagesManager.onBoardingImage5,
        onBoardingText: ConstantsValues.konBoardingText5),
  ];
}
