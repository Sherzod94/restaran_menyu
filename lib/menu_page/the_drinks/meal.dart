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
        name: "Fanta",
        detalis: "Ovqat shinavandalari turli hil mazali taomlarga boy menyuni shubhasiz yuqori baholaydilar.Oshxonada qat’iy sifat nazorati ta’minlanadi – faqat ishonchli hamkorlardan olinadigan sof mahsulotlar, aynan shunday yondashuv oshpazlikning asl betakror asarlarni yaratish imkoniyatini beradi",
        imageUrl: "assets/the_drinks/fanta.png",
        cost: "_______",
        type: "Ichimlik",
        time: "5 min",
        kkal: "254 kkal",
        bannerColor: 0xffF2DFE1,
        ingCount: 5),
    Meal(
        id: 2,
        name: "Cola",
        detalis: "Ovqat shinavandalari turli hil mazali taomlarga boy menyuni shubhasiz yuqori baholaydilar.Oshxonada qat’iy sifat nazorati ta’minlanadi – faqat ishonchli hamkorlardan olinadigan sof mahsulotlar, aynan shunday yondashuv oshpazlikning asl betakror asarlarni yaratish imkoniyatini beradi",
        imageUrl: "assets/the_drinks/cola.png",
        cost: "______",
        type: "Ichimliklar",
        time: "5 min",
        kkal: "238 kkal",
        bannerColor: 0xffDCC7B1,
        ingCount: 7),
    Meal(
        id: 3,
        name: "Pepsi",
        detalis: "Ovqat shinavandalari turli hil mazali taomlarga boy menyuni shubhasiz yuqori baholaydilar.Oshxonada qat’iy sifat nazorati ta’minlanadi – faqat ishonchli hamkorlardan olinadigan sof mahsulotlar, aynan shunday yondashuv oshpazlikning asl betakror asarlarni yaratish imkoniyatini beradi",
        imageUrl: "assets/the_drinks/pepsi.png",
        cost: "_____",
        type: "Ichimliklar",
        time: "5 min",
        kkal: "438 kkal",
        bannerColor: 0xffFFC5A8,
        ingCount: 7),
    Meal(
        id: 4,
        name: "Sok",
        detalis: "Ovqat shinavandalari turli hil mazali taomlarga boy menyuni shubhasiz yuqori baholaydilar.Oshxonada qat’iy sifat nazorati ta’minlanadi – faqat ishonchli hamkorlardan olinadigan sof mahsulotlar, aynan shunday yondashuv oshpazlikning asl betakror asarlarni yaratish imkoniyatini beradi",
        imageUrl: "assets/the_drinks/dena.png",
        cost: "_____",
        type: "Ichimliklar",
        time: "5 min",
        kkal: "338 kkal",
        bannerColor: 0xff71C3A1,
        ingCount: 7),
    Meal(
        id: 5,
        name: "Flash",
        detalis: "Ovqat shinavandalari turli hil mazali taomlarga boy menyuni shubhasiz yuqori baholaydilar.Oshxonada qat’iy sifat nazorati ta’minlanadi – faqat ishonchli hamkorlardan olinadigan sof mahsulotlar, aynan shunday yondashuv oshpazlikning asl betakror asarlarni yaratish imkoniyatini beradi",
        imageUrl: "assets/the_drinks/flash.png",
        cost: "______",
        type: "Ichimliklar",
        time: "5 min",
        kkal: "238 kkal",
        bannerColor: 0xffA8B6FF,
        ingCount: 6),

  ];

  static List<Meal> mealsRu = [
    Meal(
        id: 1,
        name: "Fanta",
        detalis: "Гурманы по достоинству оценят меню, включающее богатый ассортимент блюд.На кухне поддерживается строгий контроль качества – только свежие продукты от проверенных партнеров, ведь именно такой подход позволяет создавать настоящие шедевры.",
        imageUrl: "assets/the_drinks/fanta.png",
        cost: "_____",
        type: "Напитки",
        time: "5 мин",
        kkal: "254 кал",
        bannerColor: 0xffF2DFE1,
        ingCount: 5),
    Meal(
        id: 2,
        name: "Cola",
        detalis: "Гурманы по достоинству оценят меню, включающее богатый ассортимент блюд.На кухне поддерживается строгий контроль качества – только свежие продукты от проверенных партнеров, ведь именно такой подход позволяет создавать настоящие шедевры.",
        imageUrl: "assets/the_drinks/cola.png",
        cost: "_____",
        type: "Напитки",
        time: "5 мин",
        kkal: "238 кал",
        bannerColor: 0xffDCC7B1,
        ingCount: 7),
    Meal(
        id: 3,
        name: "Pepsi",
        detalis: "Гурманы по достоинству оценят меню, включающее богатый ассортимент блюд.На кухне поддерживается строгий контроль качества – только свежие продукты от проверенных партнеров, ведь именно такой подход позволяет создавать настоящие шедевры.",
        imageUrl: "assets/the_drinks/pepsi.png",
        cost: "_____",
        type: "Напитки",
        time: "5 мин",
        kkal: "438 кал",
        bannerColor: 0xffFFC5A8,
        ingCount: 9),
    Meal(
        id: 4,
        name: "Sok",
        detalis: "Гурманы по достоинству оценят меню, включающее богатый ассортимент блюд.На кухне поддерживается строгий контроль качества – только свежие продукты от проверенных партнеров, ведь именно такой подход позволяет создавать настоящие шедевры.",
        imageUrl: "assets/the_drinks/dena.png",
        cost: "_____",
        type: "Напитки",
        time: "5 мин",
        kkal: "338 кал",
        bannerColor: 0xff71C3A1,
        ingCount: 8),
    Meal(
        id: 5,
        name: "Flash",
        detalis: "Гурманы по достоинству оценят меню, включающее богатый ассортимент блюд.На кухне поддерживается строгий контроль качества – только свежие продукты от проверенных партнеров, ведь именно такой подход позволяет создавать настоящие шедевры.",
        imageUrl: "assets/the_drinks/flash.png",
        cost: "_____",
        type: "Напитки",
        time: "5 мин",
        kkal: "238 кал",
        bannerColor: 0xffA8B6FF,
        ingCount: 6),


  ];

  static List<Meal> mealsEn = [
    Meal(
        id: 1,
        name: "Fanta",
        detalis: "Gourmets will appreciate the menu, which includes a fabulous assortment of dishes.The kitchen maintains strict quality control and uses only fresh products from trusted partners, because this is the approach that allows you to create real masterpieces.",
        imageUrl: "assets/the_drinks/fanta.png",
        cost: "_____",
        type: "Drinks",
        time: "5 min",
        kkal: "254 kkal",
        bannerColor: 0xffF2DFE1,
        ingCount: 5),
    Meal(
        id: 2,
        name: "Cola ",
        detalis: "Gourmets will appreciate the menu, which includes a fabulous assortment of dishes.The kitchen maintains strict quality control and uses only fresh products from trusted partners, because this is the approach that allows you to create real masterpieces.",
        imageUrl: "assets/the_drinks/cola.png",
        cost: "_____",
        type: "Drinks",
        time: "5 min",
        kkal: "238 kkal",
        bannerColor: 0xffDCC7B1,
        ingCount: 7),
    Meal(
        id: 3,
        name: "Pepsi",
        detalis: "Gourmets will appreciate the menu, which includes a fabulous assortment of dishes.The kitchen maintains strict quality control and uses only fresh products from trusted partners, because this is the approach that allows you to create real masterpieces.",
        imageUrl: "assets/the_drinks/pepsi.png",
        cost: "______",
        type: "Drinks",
        time: "5 min",
        kkal: "438 kkal",
        bannerColor: 0xffFFC5A8,
        ingCount: 9),
    Meal(
        id: 4,
        name: "Sok",
        detalis: "Gourmets will appreciate the menu, which includes a fabulous assortment of dishes.The kitchen maintains strict quality control and uses only fresh products from trusted partners, because this is the approach that allows you to create real masterpieces.",
        imageUrl: "assets/the_drinks/dena.png",
        cost: "_____",
        type: "Drinks",
        time: "5 min",
        kkal: "338 kkal",
        bannerColor: 0xff71C3A1,
        ingCount: 8),
    Meal(
        id: 5,
        name: "Flash",
        detalis: "Gourmets will appreciate the menu, which includes a fabulous assortment of dishes.The kitchen maintains strict quality control and uses only fresh products from trusted partners, because this is the approach that allows you to create real masterpieces.",
        imageUrl: "assets/the_drinks/flash.png",
        cost: "_____",
        type: "Drinks",
        time: "5 min",
        kkal: "238 kkal",
        bannerColor: 0xffA8B6FF,
        ingCount: 6),


  ];
}
