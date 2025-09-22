enum Flavor {
  product,
  staging,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.product:
        return 'We love GitHub!';
      case Flavor.staging:
        return 'We love GitHub! For Stg';
    }
  }

}
