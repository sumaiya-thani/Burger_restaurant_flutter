class Burger {
  final String name;
  final String subName;
  final String type;
  final String image;
  final String rate;
  final String prepareMinutes;
  final String description;
  final String price;
  final List<String> toppings;
  final List<String> toppingsImages;
  final List<String> sideOptions;
   final List<String> sideOptionsImages;

  Burger({
    required this.toppingsImages,
    required this.sideOptionsImages, 
    required this.name,
    required this.subName,
    required this.type,
    required this.image,
    required this.rate,
    required this.prepareMinutes,
    required this.description,
    required this.price,
    required this.toppings,
    required this.sideOptions,
  });

  static final List<Burger> burgers = [
    Burger(
      name: "Cheeseburger",
      subName: "Wendy's Burger",
      type: "Combos",
      image:  "assets/images/1.png",
      rate: "4.4",
      prepareMinutes: "26",
      description:
          "The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.",
      price: "8.24",
      toppings: ["Tomato", "Onions", "Pickles", "Bacons"],
      toppingsImages:["https://s3-alpha-sig.figma.com/img/38ad/15a5/9798a3a7ca5200b72ef77dd2d5f14985?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ANl6PdazuUvJXSaSzxNFi8-2G-kPYdGhTwjhx8RKAT9Q9EwhzAlM-Yvbfp7mMmo1fPrYAFrHVH6yazZKs1smOlP-uzrZib1YgvxL1BiHMN~LaGA2nQ31aHKLBlMFISPf~qwNjHc8TmYewSpiGvOX-YvCp-YI4bBOPCHKAfbCbxoc4hCwj8TL3HASqbGOCAKSqiA1yu6tkBO2yZ9lrruJO3g6yOM2QUwORsJPnYMdkLr3aNorkNEIPM-rr90uUefO8irZPoYYPbTYtObLEcoxPBLhrBLALp5aYECDewUiDU4zPSMPgqN~D2Mjv0ODLucGNKc1pLcPakxpQAIf-PNW~w__",
      "https://s3-alpha-sig.figma.com/img/6b3c/96a9/849461cfcace0ce1eb16c4fd7df07fa6?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QG08AmLT7sjTB1q31PaWJpS~qzTRqlAXqaV7GupNib--kDYDkazjDwJIlcslgChjCDdO2YHeQ~qmZMrYnFaXsFlndYMnT3F2r7~1u~QK-R8Opr6-HOEn0QR8MxIZ5nE2YLpP9AEhaS6f78pS~Wq2NpRQrtl9euUG~b3EpCb4cnpnv5DI4kTjsBpJR4Zqap7Yvf65jpdxRHUy5hGgBy4hzWao0cYITcLmUvz3VFUg3p7dWB39yugKDxyUz7wCOD6uyxbynf-zBbRyefTZznIUypJ2lBKx8j6wD4WwvCLmk3FkSc1DbNQlK0K9v6skA7cOKHB3bkuz3q5UU6TbSVWu6Q__",
"https://s3-alpha-sig.figma.com/img/9457/a968/fe045551d4e71788105c5214e09c3b96?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nsmHsHySSwULz5kLrY0mWkzn4oFFvMnaXSP0PYNQWaIP~vwRpkuh1H0xzK2kHjti5viZptczDOZ1glgy9UiE4Uk5m5DxetgXwGRACL5hlrVd~aWybgzsvihFZtUtWbe7e8~rhCrVsdD5juaRBBl-akqTIlUEfcBZPZkfyva8xnqMAoO-7EdbzZr8BLZrTnUz-OeAxsVHTXFglFK0EF3VH-1PtOX3lVWBVuWpPMKBINZ42vmtk7r~1KgEkHizkLZUZTgZDF54VVaGifc5H9Ih-7ibFk5LAaYMdVu9SzQ72ednS0H3Zs5FHOEK0~d9dNBP4ZM7NUjTsF7fyAFX9917hA__",
"https://s3-alpha-sig.figma.com/img/1f9d/93d9/2387578ed0c7ecabdaeba26683961b47?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GfQUAntWoTBgoVhl2YxIYZvky7DsqUkEoAYYuGJPc2xjZMVpmroWwthYFnRjeo6AUJDM5Kc~Kpnhtdj8a3nl1cmVtR0YUwRufhDxFpgp9yB5mUfWNKrM5gstJLECXdMiBJKXptyABZ9~SX3bPQJNLseLO~71lz2qBURxnL2fIhgum2nV45x-m~R3TV56p7FKV-WqI3G7wZU1~l43j~g7rBnD7pCL8KYvniUjyfWO4uOi9mXqWZNW5FKx8QbHpHZCwp~xPn3bbIloZgnQbd~n3i2FA~hxJ-ByxHKHb873YrdVAHPjc~yaPh6Tdr-h5xOAGFV4KTKoM7lvobPgnRD2BA__"
      
      ],
      
      sideOptions: ["Fries", "Coleslaw", "Salad", "Onion"],
      sideOptionsImages: ["https://s3-alpha-sig.figma.com/img/43a1/6a85/775762f88c6fade20ca2c182a5443287?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DK96M9nbTExGSDcG0saVpEodfvfx0L~0adW8BHqufAHO-4x3fXgMBBRvrcRXEkUIBXGDFC-KpSvG8M9VroH-0qd4JeFt7mPZ3Mg8RFWnCxdOBhNZc6V-s~ShQX-m6YGmp51dZYa94BkTTZySA6k~SzVvanySHN8vBNq0JiTsZbPmXXCAVwn6pIby-EWQRVhX6OAaGMkG8Hhf8zHmiVf769HIx0CIdNMWhAOB27XEFCT4GZZW4aytC7cGB5x-NvPmpWkfbtTq0Wwzi1TOluw0ECE5lDd5rUzVppdt26VsWMevBONx4go7uljK1HSP5LdDiKBZEcFqT7M8F~wJkGTd8w__",
      "https://s3-alpha-sig.figma.com/img/b2b0/2c70/b0da6e8be972f879ca72bba10125358a?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OR4az3hBaLYWFqegLlUDpU4R65Nz8psTcv1o3FWeZrgNQ-4Rzfe~CD3E3lY98QtE7a4AnrdLN-epcePeMBlRZ2hqDBlqUHuV9D9B3rVFa2-F198E57yxmsB0lakJSgG-38jZGlEqu1RDaEBW0rBuaUC-1KlM5cbLY2wlOFpzEs550Kh1ZT-u4mzDMMLXyBf9gOO9BcQDzNA-p2L~0tcWUdRfs3E5RMXUa8yBVSA7Jdd3B8POP0R5ewix00LA0a8HOo4H0VgEafO6sr~~XSvEeZE0eKwWx1zkabXXhru4Q85TNaFzxI2oVJf3akybIORye7AAhc0KS-3S8xwl5oSc~A__",
      "https://s3-alpha-sig.figma.com/img/022c/80da/2c6be141a820e0c84739945828154a83?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mcEqB408NfY1Vfxscz3oR7p0kcJ4JjwYQ2YEZ9h7qcX~UvJVT8m24SRvOCauUFaTDqYMJHX9H4XRrGD588sBl~UXYbZPHQb3G7-tw2zPsf1roPRmQwnkZ~3YCJTLRghk5DA2Jvw3qlAIkIJ0QhKHxb-FQBfmzH8Cm8onfDofcysMGhEYQqOHUw38oCzqlVdzOyQizgHEB4qakVOV8-8Ofx99NcF28b-Xue0E6Nf7TGrmr3pDQ0bZ8pvD~F8jU-YHNn-UC6mfGwL8XZBkSk4ew1E2XLoSDLQjPeGcPd80u6yqeNswQ3gGo7l~Tu0rtC~lr492b7KKUuWE~FzLx18xvQ__",
      "https://s3-alpha-sig.figma.com/img/6fdc/dc90/2164de9a3863fb0fbedc5a140afa8927?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QLDiP9yJSjW0e8ZRwEc4ZUgHhvsDY78oCgwFTlT4hnclxEwrbNzcPoIeS5gemUUXXbNx12LVxpFMTq-MlpVwlg1-f~m1ERt7nXHt51PR1RR4fFA50cnVQari1vfDhlL06ol44ev5KFUQ6Vbyo296U2sg-nuQAh~EU1trshvlVsaW8-XMdP3H6efq2G8KHxnNax5S-xO92jHzYbKLjEcA2PuZnxniHgZV-7I9nzdr229WOetdSsJ9aH7dxiOh7j3d6ABGXgrIlt4PwfQPzSNzHvphgbVpEFAP2qfmyYqiLGJFw9gOypYrtl-ATiNGzvKkanUtqbIKWK8CgfEi09BPRA__"
      ]
    ),
    Burger(
      name: "Hamburger",
      subName: "Veggie Burger",
      type: "Class",
      image: "assets/images/2.png",
      prepareMinutes: "14",
      description:
          "Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun. ",
      price: "9.99",
       toppings: ["Tomato", "Onions", "Pickles", "Bacons"],
       toppingsImages:["https://s3-alpha-sig.figma.com/img/38ad/15a5/9798a3a7ca5200b72ef77dd2d5f14985?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ANl6PdazuUvJXSaSzxNFi8-2G-kPYdGhTwjhx8RKAT9Q9EwhzAlM-Yvbfp7mMmo1fPrYAFrHVH6yazZKs1smOlP-uzrZib1YgvxL1BiHMN~LaGA2nQ31aHKLBlMFISPf~qwNjHc8TmYewSpiGvOX-YvCp-YI4bBOPCHKAfbCbxoc4hCwj8TL3HASqbGOCAKSqiA1yu6tkBO2yZ9lrruJO3g6yOM2QUwORsJPnYMdkLr3aNorkNEIPM-rr90uUefO8irZPoYYPbTYtObLEcoxPBLhrBLALp5aYECDewUiDU4zPSMPgqN~D2Mjv0ODLucGNKc1pLcPakxpQAIf-PNW~w__",
      "https://s3-alpha-sig.figma.com/img/6b3c/96a9/849461cfcace0ce1eb16c4fd7df07fa6?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QG08AmLT7sjTB1q31PaWJpS~qzTRqlAXqaV7GupNib--kDYDkazjDwJIlcslgChjCDdO2YHeQ~qmZMrYnFaXsFlndYMnT3F2r7~1u~QK-R8Opr6-HOEn0QR8MxIZ5nE2YLpP9AEhaS6f78pS~Wq2NpRQrtl9euUG~b3EpCb4cnpnv5DI4kTjsBpJR4Zqap7Yvf65jpdxRHUy5hGgBy4hzWao0cYITcLmUvz3VFUg3p7dWB39yugKDxyUz7wCOD6uyxbynf-zBbRyefTZznIUypJ2lBKx8j6wD4WwvCLmk3FkSc1DbNQlK0K9v6skA7cOKHB3bkuz3q5UU6TbSVWu6Q__",
"https://s3-alpha-sig.figma.com/img/9457/a968/fe045551d4e71788105c5214e09c3b96?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nsmHsHySSwULz5kLrY0mWkzn4oFFvMnaXSP0PYNQWaIP~vwRpkuh1H0xzK2kHjti5viZptczDOZ1glgy9UiE4Uk5m5DxetgXwGRACL5hlrVd~aWybgzsvihFZtUtWbe7e8~rhCrVsdD5juaRBBl-akqTIlUEfcBZPZkfyva8xnqMAoO-7EdbzZr8BLZrTnUz-OeAxsVHTXFglFK0EF3VH-1PtOX3lVWBVuWpPMKBINZ42vmtk7r~1KgEkHizkLZUZTgZDF54VVaGifc5H9Ih-7ibFk5LAaYMdVu9SzQ72ednS0H3Zs5FHOEK0~d9dNBP4ZM7NUjTsF7fyAFX9917hA__",
"https://s3-alpha-sig.figma.com/img/1f9d/93d9/2387578ed0c7ecabdaeba26683961b47?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GfQUAntWoTBgoVhl2YxIYZvky7DsqUkEoAYYuGJPc2xjZMVpmroWwthYFnRjeo6AUJDM5Kc~Kpnhtdj8a3nl1cmVtR0YUwRufhDxFpgp9yB5mUfWNKrM5gstJLECXdMiBJKXptyABZ9~SX3bPQJNLseLO~71lz2qBURxnL2fIhgum2nV45x-m~R3TV56p7FKV-WqI3G7wZU1~l43j~g7rBnD7pCL8KYvniUjyfWO4uOi9mXqWZNW5FKx8QbHpHZCwp~xPn3bbIloZgnQbd~n3i2FA~hxJ-ByxHKHb873YrdVAHPjc~yaPh6Tdr-h5xOAGFV4KTKoM7lvobPgnRD2BA__"
      
      ],
      
      sideOptions: ["Fries", "Coleslaw", "Salad", "Onion"],
      sideOptionsImages: ["https://s3-alpha-sig.figma.com/img/43a1/6a85/775762f88c6fade20ca2c182a5443287?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DK96M9nbTExGSDcG0saVpEodfvfx0L~0adW8BHqufAHO-4x3fXgMBBRvrcRXEkUIBXGDFC-KpSvG8M9VroH-0qd4JeFt7mPZ3Mg8RFWnCxdOBhNZc6V-s~ShQX-m6YGmp51dZYa94BkTTZySA6k~SzVvanySHN8vBNq0JiTsZbPmXXCAVwn6pIby-EWQRVhX6OAaGMkG8Hhf8zHmiVf769HIx0CIdNMWhAOB27XEFCT4GZZW4aytC7cGB5x-NvPmpWkfbtTq0Wwzi1TOluw0ECE5lDd5rUzVppdt26VsWMevBONx4go7uljK1HSP5LdDiKBZEcFqT7M8F~wJkGTd8w__",
      "https://s3-alpha-sig.figma.com/img/b2b0/2c70/b0da6e8be972f879ca72bba10125358a?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OR4az3hBaLYWFqegLlUDpU4R65Nz8psTcv1o3FWeZrgNQ-4Rzfe~CD3E3lY98QtE7a4AnrdLN-epcePeMBlRZ2hqDBlqUHuV9D9B3rVFa2-F198E57yxmsB0lakJSgG-38jZGlEqu1RDaEBW0rBuaUC-1KlM5cbLY2wlOFpzEs550Kh1ZT-u4mzDMMLXyBf9gOO9BcQDzNA-p2L~0tcWUdRfs3E5RMXUa8yBVSA7Jdd3B8POP0R5ewix00LA0a8HOo4H0VgEafO6sr~~XSvEeZE0eKwWx1zkabXXhru4Q85TNaFzxI2oVJf3akybIORye7AAhc0KS-3S8xwl5oSc~A__",
      "https://s3-alpha-sig.figma.com/img/022c/80da/2c6be141a820e0c84739945828154a83?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mcEqB408NfY1Vfxscz3oR7p0kcJ4JjwYQ2YEZ9h7qcX~UvJVT8m24SRvOCauUFaTDqYMJHX9H4XRrGD588sBl~UXYbZPHQb3G7-tw2zPsf1roPRmQwnkZ~3YCJTLRghk5DA2Jvw3qlAIkIJ0QhKHxb-FQBfmzH8Cm8onfDofcysMGhEYQqOHUw38oCzqlVdzOyQizgHEB4qakVOV8-8Ofx99NcF28b-Xue0E6Nf7TGrmr3pDQ0bZ8pvD~F8jU-YHNn-UC6mfGwL8XZBkSk4ew1E2XLoSDLQjPeGcPd80u6yqeNswQ3gGo7l~Tu0rtC~lr492b7KKUuWE~FzLx18xvQ__",
      "https://s3-alpha-sig.figma.com/img/6fdc/dc90/2164de9a3863fb0fbedc5a140afa8927?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QLDiP9yJSjW0e8ZRwEc4ZUgHhvsDY78oCgwFTlT4hnclxEwrbNzcPoIeS5gemUUXXbNx12LVxpFMTq-MlpVwlg1-f~m1ERt7nXHt51PR1RR4fFA50cnVQari1vfDhlL06ol44ev5KFUQ6Vbyo296U2sg-nuQAh~EU1trshvlVsaW8-XMdP3H6efq2G8KHxnNax5S-xO92jHzYbKLjEcA2PuZnxniHgZV-7I9nzdr229WOetdSsJ9aH7dxiOh7j3d6ABGXgrIlt4PwfQPzSNzHvphgbVpEFAP2qfmyYqiLGJFw9gOypYrtl-ATiNGzvKkanUtqbIKWK8CgfEi09BPRA__"
      ], rate: '4.5'
    ),
    Burger(
      name: "Hamburger",
      subName: "Chicken Burger",

      type: "Combos",
      image: "assets/images/3.png",
      rate: "4.6",
      prepareMinutes: "42",
      description:
          "Our chicken burger is a delicious and healthier alternative to traditional beef burgers, perfect for those looking for a lighter meal option. Try it today and experience the mouth-watering flavors of our Hamburger Chicken Burger!.",
      price: "12.84",
       toppings: ["Tomato", "Onions", "Pickles", "Bacons"],
      toppingsImages:["https://s3-alpha-sig.figma.com/img/38ad/15a5/9798a3a7ca5200b72ef77dd2d5f14985?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ANl6PdazuUvJXSaSzxNFi8-2G-kPYdGhTwjhx8RKAT9Q9EwhzAlM-Yvbfp7mMmo1fPrYAFrHVH6yazZKs1smOlP-uzrZib1YgvxL1BiHMN~LaGA2nQ31aHKLBlMFISPf~qwNjHc8TmYewSpiGvOX-YvCp-YI4bBOPCHKAfbCbxoc4hCwj8TL3HASqbGOCAKSqiA1yu6tkBO2yZ9lrruJO3g6yOM2QUwORsJPnYMdkLr3aNorkNEIPM-rr90uUefO8irZPoYYPbTYtObLEcoxPBLhrBLALp5aYECDewUiDU4zPSMPgqN~D2Mjv0ODLucGNKc1pLcPakxpQAIf-PNW~w__",
      "https://s3-alpha-sig.figma.com/img/6b3c/96a9/849461cfcace0ce1eb16c4fd7df07fa6?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QG08AmLT7sjTB1q31PaWJpS~qzTRqlAXqaV7GupNib--kDYDkazjDwJIlcslgChjCDdO2YHeQ~qmZMrYnFaXsFlndYMnT3F2r7~1u~QK-R8Opr6-HOEn0QR8MxIZ5nE2YLpP9AEhaS6f78pS~Wq2NpRQrtl9euUG~b3EpCb4cnpnv5DI4kTjsBpJR4Zqap7Yvf65jpdxRHUy5hGgBy4hzWao0cYITcLmUvz3VFUg3p7dWB39yugKDxyUz7wCOD6uyxbynf-zBbRyefTZznIUypJ2lBKx8j6wD4WwvCLmk3FkSc1DbNQlK0K9v6skA7cOKHB3bkuz3q5UU6TbSVWu6Q__",
"https://s3-alpha-sig.figma.com/img/9457/a968/fe045551d4e71788105c5214e09c3b96?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nsmHsHySSwULz5kLrY0mWkzn4oFFvMnaXSP0PYNQWaIP~vwRpkuh1H0xzK2kHjti5viZptczDOZ1glgy9UiE4Uk5m5DxetgXwGRACL5hlrVd~aWybgzsvihFZtUtWbe7e8~rhCrVsdD5juaRBBl-akqTIlUEfcBZPZkfyva8xnqMAoO-7EdbzZr8BLZrTnUz-OeAxsVHTXFglFK0EF3VH-1PtOX3lVWBVuWpPMKBINZ42vmtk7r~1KgEkHizkLZUZTgZDF54VVaGifc5H9Ih-7ibFk5LAaYMdVu9SzQ72ednS0H3Zs5FHOEK0~d9dNBP4ZM7NUjTsF7fyAFX9917hA__",
"https://s3-alpha-sig.figma.com/img/1f9d/93d9/2387578ed0c7ecabdaeba26683961b47?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GfQUAntWoTBgoVhl2YxIYZvky7DsqUkEoAYYuGJPc2xjZMVpmroWwthYFnRjeo6AUJDM5Kc~Kpnhtdj8a3nl1cmVtR0YUwRufhDxFpgp9yB5mUfWNKrM5gstJLECXdMiBJKXptyABZ9~SX3bPQJNLseLO~71lz2qBURxnL2fIhgum2nV45x-m~R3TV56p7FKV-WqI3G7wZU1~l43j~g7rBnD7pCL8KYvniUjyfWO4uOi9mXqWZNW5FKx8QbHpHZCwp~xPn3bbIloZgnQbd~n3i2FA~hxJ-ByxHKHb873YrdVAHPjc~yaPh6Tdr-h5xOAGFV4KTKoM7lvobPgnRD2BA__"
      
      ],
      
      sideOptions: ["Fries", "Coleslaw", "Salad", "Onion"],
      sideOptionsImages: ["https://s3-alpha-sig.figma.com/img/43a1/6a85/775762f88c6fade20ca2c182a5443287?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DK96M9nbTExGSDcG0saVpEodfvfx0L~0adW8BHqufAHO-4x3fXgMBBRvrcRXEkUIBXGDFC-KpSvG8M9VroH-0qd4JeFt7mPZ3Mg8RFWnCxdOBhNZc6V-s~ShQX-m6YGmp51dZYa94BkTTZySA6k~SzVvanySHN8vBNq0JiTsZbPmXXCAVwn6pIby-EWQRVhX6OAaGMkG8Hhf8zHmiVf769HIx0CIdNMWhAOB27XEFCT4GZZW4aytC7cGB5x-NvPmpWkfbtTq0Wwzi1TOluw0ECE5lDd5rUzVppdt26VsWMevBONx4go7uljK1HSP5LdDiKBZEcFqT7M8F~wJkGTd8w__",
      "https://s3-alpha-sig.figma.com/img/b2b0/2c70/b0da6e8be972f879ca72bba10125358a?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OR4az3hBaLYWFqegLlUDpU4R65Nz8psTcv1o3FWeZrgNQ-4Rzfe~CD3E3lY98QtE7a4AnrdLN-epcePeMBlRZ2hqDBlqUHuV9D9B3rVFa2-F198E57yxmsB0lakJSgG-38jZGlEqu1RDaEBW0rBuaUC-1KlM5cbLY2wlOFpzEs550Kh1ZT-u4mzDMMLXyBf9gOO9BcQDzNA-p2L~0tcWUdRfs3E5RMXUa8yBVSA7Jdd3B8POP0R5ewix00LA0a8HOo4H0VgEafO6sr~~XSvEeZE0eKwWx1zkabXXhru4Q85TNaFzxI2oVJf3akybIORye7AAhc0KS-3S8xwl5oSc~A__",
      "https://s3-alpha-sig.figma.com/img/022c/80da/2c6be141a820e0c84739945828154a83?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mcEqB408NfY1Vfxscz3oR7p0kcJ4JjwYQ2YEZ9h7qcX~UvJVT8m24SRvOCauUFaTDqYMJHX9H4XRrGD588sBl~UXYbZPHQb3G7-tw2zPsf1roPRmQwnkZ~3YCJTLRghk5DA2Jvw3qlAIkIJ0QhKHxb-FQBfmzH8Cm8onfDofcysMGhEYQqOHUw38oCzqlVdzOyQizgHEB4qakVOV8-8Ofx99NcF28b-Xue0E6Nf7TGrmr3pDQ0bZ8pvD~F8jU-YHNn-UC6mfGwL8XZBkSk4ew1E2XLoSDLQjPeGcPd80u6yqeNswQ3gGo7l~Tu0rtC~lr492b7KKUuWE~FzLx18xvQ__",
      "https://s3-alpha-sig.figma.com/img/6fdc/dc90/2164de9a3863fb0fbedc5a140afa8927?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QLDiP9yJSjW0e8ZRwEc4ZUgHhvsDY78oCgwFTlT4hnclxEwrbNzcPoIeS5gemUUXXbNx12LVxpFMTq-MlpVwlg1-f~m1ERt7nXHt51PR1RR4fFA50cnVQari1vfDhlL06ol44ev5KFUQ6Vbyo296U2sg-nuQAh~EU1trshvlVsaW8-XMdP3H6efq2G8KHxnNax5S-xO92jHzYbKLjEcA2PuZnxniHgZV-7I9nzdr229WOetdSsJ9aH7dxiOh7j3d6ABGXgrIlt4PwfQPzSNzHvphgbVpEFAP2qfmyYqiLGJFw9gOypYrtl-ATiNGzvKkanUtqbIKWK8CgfEi09BPRA__"
      ]
    ),
    Burger(
      name: "Hamburger",
      subName: "Fried Chicken Burger ",
      type: "Sliders",
      image: "assets/images/4.png",
      rate: "4.5",
      prepareMinutes: "14",
      description:
          "Indulge in our crispy and savory Fried Chicken Burger, made with a juicy chicken patty, hand-breaded and deep-fried to perfection, served on a warm bun with lettuce, tomato, and a creamy sauce.",
      price: "26.99",
       toppings: ["Tomato", "Onions", "Pickles", "Bacons"],
      toppingsImages:["https://s3-alpha-sig.figma.com/img/38ad/15a5/9798a3a7ca5200b72ef77dd2d5f14985?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ANl6PdazuUvJXSaSzxNFi8-2G-kPYdGhTwjhx8RKAT9Q9EwhzAlM-Yvbfp7mMmo1fPrYAFrHVH6yazZKs1smOlP-uzrZib1YgvxL1BiHMN~LaGA2nQ31aHKLBlMFISPf~qwNjHc8TmYewSpiGvOX-YvCp-YI4bBOPCHKAfbCbxoc4hCwj8TL3HASqbGOCAKSqiA1yu6tkBO2yZ9lrruJO3g6yOM2QUwORsJPnYMdkLr3aNorkNEIPM-rr90uUefO8irZPoYYPbTYtObLEcoxPBLhrBLALp5aYECDewUiDU4zPSMPgqN~D2Mjv0ODLucGNKc1pLcPakxpQAIf-PNW~w__",
      "https://s3-alpha-sig.figma.com/img/6b3c/96a9/849461cfcace0ce1eb16c4fd7df07fa6?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QG08AmLT7sjTB1q31PaWJpS~qzTRqlAXqaV7GupNib--kDYDkazjDwJIlcslgChjCDdO2YHeQ~qmZMrYnFaXsFlndYMnT3F2r7~1u~QK-R8Opr6-HOEn0QR8MxIZ5nE2YLpP9AEhaS6f78pS~Wq2NpRQrtl9euUG~b3EpCb4cnpnv5DI4kTjsBpJR4Zqap7Yvf65jpdxRHUy5hGgBy4hzWao0cYITcLmUvz3VFUg3p7dWB39yugKDxyUz7wCOD6uyxbynf-zBbRyefTZznIUypJ2lBKx8j6wD4WwvCLmk3FkSc1DbNQlK0K9v6skA7cOKHB3bkuz3q5UU6TbSVWu6Q__",
"https://s3-alpha-sig.figma.com/img/9457/a968/fe045551d4e71788105c5214e09c3b96?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=nsmHsHySSwULz5kLrY0mWkzn4oFFvMnaXSP0PYNQWaIP~vwRpkuh1H0xzK2kHjti5viZptczDOZ1glgy9UiE4Uk5m5DxetgXwGRACL5hlrVd~aWybgzsvihFZtUtWbe7e8~rhCrVsdD5juaRBBl-akqTIlUEfcBZPZkfyva8xnqMAoO-7EdbzZr8BLZrTnUz-OeAxsVHTXFglFK0EF3VH-1PtOX3lVWBVuWpPMKBINZ42vmtk7r~1KgEkHizkLZUZTgZDF54VVaGifc5H9Ih-7ibFk5LAaYMdVu9SzQ72ednS0H3Zs5FHOEK0~d9dNBP4ZM7NUjTsF7fyAFX9917hA__",
"https://s3-alpha-sig.figma.com/img/1f9d/93d9/2387578ed0c7ecabdaeba26683961b47?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GfQUAntWoTBgoVhl2YxIYZvky7DsqUkEoAYYuGJPc2xjZMVpmroWwthYFnRjeo6AUJDM5Kc~Kpnhtdj8a3nl1cmVtR0YUwRufhDxFpgp9yB5mUfWNKrM5gstJLECXdMiBJKXptyABZ9~SX3bPQJNLseLO~71lz2qBURxnL2fIhgum2nV45x-m~R3TV56p7FKV-WqI3G7wZU1~l43j~g7rBnD7pCL8KYvniUjyfWO4uOi9mXqWZNW5FKx8QbHpHZCwp~xPn3bbIloZgnQbd~n3i2FA~hxJ-ByxHKHb873YrdVAHPjc~yaPh6Tdr-h5xOAGFV4KTKoM7lvobPgnRD2BA__"
      
      ],
      
      sideOptions: ["Fries", "Coleslaw", "Salad", "Onion"],
      sideOptionsImages: ["https://s3-alpha-sig.figma.com/img/43a1/6a85/775762f88c6fade20ca2c182a5443287?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DK96M9nbTExGSDcG0saVpEodfvfx0L~0adW8BHqufAHO-4x3fXgMBBRvrcRXEkUIBXGDFC-KpSvG8M9VroH-0qd4JeFt7mPZ3Mg8RFWnCxdOBhNZc6V-s~ShQX-m6YGmp51dZYa94BkTTZySA6k~SzVvanySHN8vBNq0JiTsZbPmXXCAVwn6pIby-EWQRVhX6OAaGMkG8Hhf8zHmiVf769HIx0CIdNMWhAOB27XEFCT4GZZW4aytC7cGB5x-NvPmpWkfbtTq0Wwzi1TOluw0ECE5lDd5rUzVppdt26VsWMevBONx4go7uljK1HSP5LdDiKBZEcFqT7M8F~wJkGTd8w__",
      "https://s3-alpha-sig.figma.com/img/b2b0/2c70/b0da6e8be972f879ca72bba10125358a?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OR4az3hBaLYWFqegLlUDpU4R65Nz8psTcv1o3FWeZrgNQ-4Rzfe~CD3E3lY98QtE7a4AnrdLN-epcePeMBlRZ2hqDBlqUHuV9D9B3rVFa2-F198E57yxmsB0lakJSgG-38jZGlEqu1RDaEBW0rBuaUC-1KlM5cbLY2wlOFpzEs550Kh1ZT-u4mzDMMLXyBf9gOO9BcQDzNA-p2L~0tcWUdRfs3E5RMXUa8yBVSA7Jdd3B8POP0R5ewix00LA0a8HOo4H0VgEafO6sr~~XSvEeZE0eKwWx1zkabXXhru4Q85TNaFzxI2oVJf3akybIORye7AAhc0KS-3S8xwl5oSc~A__",
      "https://s3-alpha-sig.figma.com/img/022c/80da/2c6be141a820e0c84739945828154a83?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mcEqB408NfY1Vfxscz3oR7p0kcJ4JjwYQ2YEZ9h7qcX~UvJVT8m24SRvOCauUFaTDqYMJHX9H4XRrGD588sBl~UXYbZPHQb3G7-tw2zPsf1roPRmQwnkZ~3YCJTLRghk5DA2Jvw3qlAIkIJ0QhKHxb-FQBfmzH8Cm8onfDofcysMGhEYQqOHUw38oCzqlVdzOyQizgHEB4qakVOV8-8Ofx99NcF28b-Xue0E6Nf7TGrmr3pDQ0bZ8pvD~F8jU-YHNn-UC6mfGwL8XZBkSk4ew1E2XLoSDLQjPeGcPd80u6yqeNswQ3gGo7l~Tu0rtC~lr492b7KKUuWE~FzLx18xvQ__",
      "https://s3-alpha-sig.figma.com/img/6fdc/dc90/2164de9a3863fb0fbedc5a140afa8927?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QLDiP9yJSjW0e8ZRwEc4ZUgHhvsDY78oCgwFTlT4hnclxEwrbNzcPoIeS5gemUUXXbNx12LVxpFMTq-MlpVwlg1-f~m1ERt7nXHt51PR1RR4fFA50cnVQari1vfDhlL06ol44ev5KFUQ6Vbyo296U2sg-nuQAh~EU1trshvlVsaW8-XMdP3H6efq2G8KHxnNax5S-xO92jHzYbKLjEcA2PuZnxniHgZV-7I9nzdr229WOetdSsJ9aH7dxiOh7j3d6ABGXgrIlt4PwfQPzSNzHvphgbVpEFAP2qfmyYqiLGJFw9gOypYrtl-ATiNGzvKkanUtqbIKWK8CgfEi09BPRA__"
      ]
    ),
  ];
}
