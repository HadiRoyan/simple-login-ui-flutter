class Shoe {
  String name;
  String price;
  String imageAsset;

  Shoe({
    required this.name,
    required this.price,
    required this.imageAsset,
  });
}

var shoes = [
  Shoe(
      name: 'Nike Air Jordan 1 Low SE',
      price: 'Rp 1.909.000',
      imageAsset: 'images/air-jordan-1-low-se-shoes.png'),
  Shoe(
      name: 'Nike Dunk Low Retro',
      price: 'Rp 1.549.000',
      imageAsset: 'images/dunk-low-retro-shoe.png'),
  Shoe(
      name: 'Nike Air Force 1 \'07',
      price: 'Rp 1.909.000',
      imageAsset: 'images/air-force-1-07-shoes.png'),
  Shoe(
      name: 'Nike P-6000',
      price: 'Rp 1.729.000',
      imageAsset: 'images/p-6000-shoe.png'),
  Shoe(
      name: 'Nike Air Max Pulse',
      price: 'Rp 2.379.000',
      imageAsset: 'images/air-max-pulse-shoes.png'),
  Shoe(
      name: 'Nike Air Max 90 SE',
      price: 'Rp 2.199.000',
      imageAsset: 'images/air-max-90-se-shoes.png'),
];
