class Meal {
  int? id;
  String? name;
  String? detalis;
  String? imageUrl;
  String? cost;
  String? type;
  String? time;
  String? kkal;
  int? bannerColor;
  int? ingCount;

  Meal({this.id, this.name,this.detalis,  this.imageUrl, this.cost, this.type, this.time, this.kkal , this.bannerColor, this.ingCount});

  static List<Meal> mealsUz = [
    Meal(
        id: 1,
        name: "Mevali ",
        detalis: "Ovqat shinavandalari turli hil mazali taomlarga boy menyuni shubhasiz yuqori baholaydilar.Oshxonada qat’iy sifat nazorati ta’minlanadi – faqat ishonchli hamkorlardan olinadigan sof mahsulotlar, aynan shunday yondashuv oshpazlikning asl betakror asarlarni yaratish imkoniyatini beradi.",
        imageUrl: "assets/the_drinks/mevali.png",
        cost: "---",
        type: "Shirinliklar",
        time: "10 min",
        kkal: "165 kkal",
        bannerColor: 0xffF2DFE1,
        ingCount: 7),
    Meal(
        id: 2,
        name: "Shokolatli",
        detalis: "Ovqat shinavandalari turli hil mazali taomlarga boy menyuni shubhasiz yuqori baholaydilar.Oshxonada qat’iy sifat nazorati ta’minlanadi – faqat ishonchli hamkorlardan olinadigan sof mahsulotlar, aynan shunday yondashuv oshpazlikning asl betakror asarlarni yaratish imkoniyatini beradi.",
        imageUrl: "assets/the_drinks/shakalatli.png",
        cost: "---",
        type: "Shirinliklar",
        time: "8 min",
        kkal: "236 kkal",
        bannerColor: 0xffDCC7B1,
        ingCount: 7),

     ];

  static List<Meal> mealsRu = [
    Meal(
        id: 1,
        name: "Мевали",
        detalis: "Гурманы по достоинству оценят меню, включающее богатый ассортимент блюд.На кухне поддерживается строгий контроль качества – только свежие продукты от проверенных партнеров, ведь именно такой подход позволяет создавать настоящие шедевры.",
        imageUrl: "assets/the_drinks/mevali.png",
        cost: "---",
        type: "Десерты",
        time: "10 мин",
        kkal: "165 кал",
        bannerColor: 0xffF2DFE1,
        ingCount: 7),
    Meal(
        id: 2,
        name: "Шоколад",
        detalis: "Гурманы по достоинству оценят меню, включающее богатый ассортимент блюд.На кухне поддерживается строгий контроль качества – только свежие продукты от проверенных партнеров, ведь именно такой подход позволяет создавать настоящие шедевры.",
        imageUrl: "assets/the_drinks/shakalatli.png",
        cost: "---",
        type: "Десерты",
        time: "8 мин",
        kkal: "236 кал",
        bannerColor: 0xffDCC7B1,
        ingCount: 7),

  ];

  static List<Meal> mealsEn = [
    Meal(
        id: 1,
        name: "Mevali ",
        detalis: "Gourmets will appreciate the menu, which includes a fabulous assortment of dishes.The kitchen maintains strict quality control and uses only fresh products from trusted partners, because this is the approach that allows you to create real masterpieces.",
        imageUrl: "assets/the_drinks/mevali.png",
        cost: "---",
        type: "Dessert",
        time: "10 min",
        kkal: "165 kkal",
        bannerColor: 0xffF2DFE1,
        ingCount: 7),
    Meal(
        id: 2,
        name: "Shokolat",
        detalis: "Gourmets will appreciate the menu, which includes a fabulous assortment of dishes.The kitchen maintains strict quality control and uses only fresh products from trusted partners, because this is the approach that allows you to create real masterpieces.",
        imageUrl: "assets/the_drinks/shakalatli.png",
        cost: "---",
        type: "Dessert",
        time: "8 min",
        kkal: "236 kkal",
        bannerColor: 0xffDCC7B1,
        ingCount: 7),


  ];
}
