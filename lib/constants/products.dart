import 'package:credpal_test/constants/assets.dart';
import 'package:credpal_test/entities/product.dart';

List<Product> kProducts = [
  Product(
    name: 'Nokia G20',
    image: Assets.nokaG20,
    price: '39,780',
    slashedPrice: '88,000',
    percentOff: 40,
  ),
  Product(
    name: 'iPhone XS Max 4GB..',
    image: Assets.iPhoneXSMax,
    price: '295,999',
    slashedPrice: '315,000',
    merchantImage: Assets.ogabassey,
  ),
  Product(
    name: 'Anker Soundcore..',
    image: Assets.ankerSoundCore,
    price: '39,780',
    slashedPrice: '88,000',
    merchantImage: Assets.okayFones,
  ),
  Product(
    name: 'iPhone 12 Pro',
    image: Assets.iPhone12Pro,
    price: '490,500',
    slashedPrice: '515,000',
    merchantImage: Assets.iMateStores,
  ),
];

List<Product> kAllProducts = kProducts + kProducts;
