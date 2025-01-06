import '../../util/image_contented.dart';

class SwitchImageFunc {
  String getSwitchHeroAttributeImage(String heroAtt) {
    switch (heroAtt) {
      case "agility":
        return ImageContented.attAgility;
      case "intelligence":
        return ImageContented.attIntelligence;
      case "strength":
        return ImageContented.attStrenght;
      default:
        return ImageContented.attUniversal;
    }
  }

  String getSwitchHeroAttackTypeImage(String attType) {
    switch (attType) {
      case "melee":
        return ImageContented.melee;
      default:
        return ImageContented.ranged;
    }
  }
}
