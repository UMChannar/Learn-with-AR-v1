import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_with_ar_v1/custom_widgets/lwr/lwr_middleman_items.dart';

class LwrARScreenArguments {
  final String words;
  final String sound;
  final String model;
  final String pageTitle;

  LwrARScreenArguments(
    this.words,
    this.sound,
    this.model,
    this.pageTitle,
  );
}

List<Map> englishData = [
  {
    'title1': 'A / a',
    'title2': 'B / b',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'A => Apple\na => apple',
          'assets/audio/english/words/apple.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/apple.glb',
          'Apple',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'B => Ball\nb => ball',
          'assets/audio/english/words/ball.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/ball.glb',
          'Ball',
        ),
      );
    },
    'color1': const Color(0x00ff5733),
    'color2': const Color(0x006d4c41),
    'audio1': 'assets/audio/english/phonics/a.mp3',
    'audio2': 'assets/audio/english/phonics/b.mp3',
  },
  {
    'title1': 'C / c',
    'title2': 'D / d',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'C => Cat\nc => cat',
          'assets/audio/english/words/cat.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/cat.glb',
          'Cat',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'D => Dog\nd => dog',
          'assets/audio/english/words/dog.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/dog.glb',
          'Dog',
        ),
      );
    },
    'color1': const Color(0x009b59b6),
    'color2': const Color(0x002980b9),
    'audio1': 'assets/audio/english/phonics/c.mp3',
    'audio2': 'assets/audio/english/phonics/d.mp3',
  },
  {
    'title1': 'E / e',
    'title2': 'F / f',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'E => Elephant\ne => elephant',
          'assets/audio/english/words/elephant.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/elephant.glb',
          'Elephant',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'F => Football\nf => football',
          'assets/audio/english/words/football.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/ball.glb',
          'Football',
        ),
      );
    },
    'color1': const Color(0x00f1c40f),
    'color2': const Color(0x00f39c12),
    'audio1': 'assets/audio/english/phonics/e.mp3',
    'audio2': 'assets/audio/english/phonics/f.mp3',
  },
  {
    'title1': 'G / g',
    'title2': 'H / h',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'G => Giraffe\ng => giraffe',
          'assets/audio/english/words/giraffe.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/giraffe.glb',
          'Giraffe',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'H => Horse\nh => horse',
          'assets/audio/english/words/horse.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/horse.glb',
          'Horse',
        ),
      );
    },
    'color1': const Color(0x00e67e22),
    'color2': const Color(0x00d35400),
    'audio1': 'assets/audio/english/phonics/g.mp3',
    'audio2': 'assets/audio/english/phonics/h.mp3',
  },
  {
    'title1': 'I / i',
    'title2': 'J / j',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'I => IceCream\ni => iceCream',
          'assets/audio/english/words/icecream.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/icecCream.glb',
          'IceCream',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'J => Juice\nj => juice',
          'assets/audio/english/words/juice.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/juice.glb',
          'Juice',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/english/phonics/i.mp3',
    'audio2': 'assets/audio/english/phonics/j.mp3',
  },
  {
    'title1': 'K / k',
    'title2': 'L / l',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'K => Kite\nk => kite',
          'assets/audio/english/words/kite.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/kite.glb',
          'Kite',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'L => Lemon\nl => lemon',
          'assets/audio/english/words/lemon.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/lemon.glb',
          'Lemon',
        ),
      );
    },
    'color1': const Color(0x00e74c3c),
    'color2': const Color(0x00c0392b),
    'audio1': 'assets/audio/english/phonics/k.mp3',
    'audio2': 'assets/audio/english/phonics/l.mp3',
  },
  {
    'title1': 'M / m',
    'title2': 'N / n',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'M => Mango\nm => mango',
          'assets/audio/english/words/mango.mp3',
          'https://github.com/UMChannar/Models/raw/master/urdu/mango.glb',
          'Mango',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'N => Notebook\nn => notebook',
          'assets/audio/english/words/notebook.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/notebook.glb',
          'Notebook',
        ),
      );
    },
    'color1': const Color(0x00f1c40f),
    'color2': const Color(0x00f39c12),
    'audio1': 'assets/audio/english/phonics/m.mp3',
    'audio2': 'assets/audio/english/phonics/n.mp3',
  },
  {
    'title1': 'O / o',
    'title2': 'P / p',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'O => Orange\no => orange',
          'assets/audio/english/words/orange.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/orange.glb',
          'Orange',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'P => Peach\np => peach',
          'assets/audio/english/words/peach.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/peach.glb',
          'Peach',
        ),
      );
    },
    'color1': const Color(0x00e67e22),
    'color2': const Color(0x00d35400),
    'audio1': 'assets/audio/english/phonics/o.mp3',
    'audio2': 'assets/audio/english/phonics/p.mp3',
  },
  {
    'title1': 'Q / q',
    'title2': 'R / r',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'Q => Queen\nq => queen',
          'assets/audio/english/words/queen.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/brunhilda.glb',
          'Queen',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'R => Rabbit\nr => rabbit',
          'assets/audio/english/words/rabbit.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/rabbit.glb',
          'Rabbit',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/english/phonics/q.mp3',
    'audio2': 'assets/audio/english/phonics/r.mp3',
  },
  {
    'title1': 'S / s',
    'title2': 'T / t',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'S => Sun\ns => sun',
          'assets/audio/english/words/sun.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/sun.glb',
          'Sun',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'T => Tree\nt => tree',
          'assets/audio/english/words/tree.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/tree.glb',
          'Tree',
        ),
      );
    },
    'color1': const Color(0x00e74c3c),
    'color2': const Color(0x00c0392b),
    'audio1': 'assets/audio/english/phonics/s.mp3',
    'audio2': 'assets/audio/english/phonics/t.mp3',
  },
  {
    'title1': 'U / u',
    'title2': 'V / v',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'U => Umbrella\nu => umbrella',
          'assets/audio/english/words/umbrella.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/umbrella.glb',
          'Umbrella',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'V => Violin\nv => violin',
          'assets/audio/english/words/violin.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/violin.glb',
          'Violin',
        ),
      );
    },
    'color1': const Color(0x00f1c40f),
    'color2': const Color(0x00f39c12),
    'audio1': 'assets/audio/english/phonics/u.mp3',
    'audio2': 'assets/audio/english/phonics/v.mp3',
  },
  {
    'title1': 'W / w',
    'title2': 'X / x',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'W => Water\nw => water',
          'assets/audio/english/words/water.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/water.glb',
          'Water',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'X => Xylophone\nx => xylophone',
          'assets/audio/english/words/xylophone.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/xylophone.glb',
          'Xylophone',
        ),
      );
    },
    'color1': const Color(0x00e67e22),
    'color2': const Color(0x00d35400),
    'audio1': 'assets/audio/english/phonics/w.mp3',
    'audio2': 'assets/audio/english/phonics/x.mp3',
  },
  {
    'title1': 'Y / y',
    'title2': 'Z / z',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'Y => Yak\ny => yak',
          'assets/audio/english/words/yak.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/yak.glb',
          'Yak',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'Z => Zebra\nz => zebra',
          'assets/audio/english/words/zebra.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/zebra.glb',
          'Zebra',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/english/phonics/y.mp3',
    'audio2': 'assets/audio/english/phonics/z.mp3',
  },
];

// ##########################################################################################

List<Map> urduData = [
  {
    'title1': 'آ',
    'title2': 'ا',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'آم',
          'assets/audio/urdu/words/mango.mp3',
          'https://github.com/UMChannar/Models/raw/master/urdu/mango.glb',
          'آم',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'انگور',
          'assets/audio/urdu/words/grapes.mp3',
          'https://github.com/UMChannar/Models/raw/master/urdu/grapes.glb',
          'انگور',
        ),
      );
    },
    'color1': const Color(0x00ff5733),
    'color2': const Color(0x006d4c41),
    'audio1': 'assets/audio/urdu/phonics/alif-madd.mp3',
    'audio2': 'assets/audio/urdu/phonics/alif.mp3',
  },
  {
    'title1': 'ب',
    'title2': 'پ',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'بلی',
          'assets/audio/urdu/words/cat.mp3',
          'https://github.com/UMChannar/Models/raw/master/urdu/cat.glb',
          'بلی',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'پتنگ',
          'assets/audio/urdu/words/kite.mp3',
          'https://github.com/UMChannar/Models/raw/master/urdu/kite.glb',
          'پتنگ',
        ),
      );
    },
    'color1': const Color(0x009b59b6),
    'color2': const Color(0x002980b9),
    'audio1': 'assets/audio/urdu/phonics/be.mp3',
    'audio2': 'assets/audio/urdu/phonics/pe.mp3',
  },
  {
    'title1': 'ت',
    'title2': 'ٹ',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'تتلی',
          'assets/audio/urdu/words/butterfly.mp3',
          'https://github.com/UMChannar/Models/raw/master/urdu/butterfly.glb',
          'تتلی',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'ٹماٹر',
          'assets/audio/urdu/words/tomato.mp3',
          'https://github.com/UMChannar/Models/raw/master/urdu/tomato.glb',
          'ٹماٹر',
        ),
      );
    },
    'color1': const Color(0x00f1c40f),
    'color2': const Color(0x00f39c12),
    'audio1': 'assets/audio/urdu/phonics/te.mp3',
    'audio2': 'assets/audio/urdu/phonics/Tte.mp3',
  },
  {
    'title1': 'ث',
    'title2': 'ج',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'ثمر',
          'assets/audio/urdu/words/fruit.mp3',
          'https://github.com/UMChannar/Models/raw/master/urdu/fruit.glb',
          'ثمر',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'جہاز',
          'assets/audio/urdu/words/airplane.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/yak.glb',
          'جہاز',
        ),
      );
    },
    'color1': const Color(0x00e67e22),
    'color2': const Color(0x00d35400),
    'audio1': 'assets/audio/urdu/phonics/se.mp3',
    'audio2': 'assets/audio/urdu/phonics/jeem.mp3',
  },
  {
    'title1': 'ح',
    'title2': 'خ',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'جہاز',
          'assets/audio/urdu/words/airplane.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/yak.glb',
          'جہاز',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'جہاز',
          'assets/audio/urdu/words/airplane.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/yak.glb',
          'جہاز',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/urdu/phonics/baree-he.mp3',
    'audio2': 'assets/audio/urdu/phonics/khe.mp3',
  },
  {
    'title1': 'د',
    'title2': 'ڈ',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'جہاز',
          'assets/audio/urdu/words/airplane.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/yak.glb',
          'جہاز',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'جہاز',
          'assets/audio/urdu/words/airplane.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/yak.glb',
          'جہاز',
        ),
      );
    },
    'color1': const Color(0x00e74c3c),
    'color2': const Color(0x00c0392b),
    'audio1': 'assets/audio/urdu/phonics/daal.mp3',
    'audio2': 'assets/audio/urdu/phonics/Ddaal.mp3',
  },
  {
    'title1': 'ذ',
    'title2': 'ر',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'جہاز',
          'assets/audio/urdu/words/airplane.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/yak.glb',
          'جہاز',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'جہاز',
          'assets/audio/urdu/words/airplane.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/yak.glb',
          'جہاز',
        ),
      );
    },
    'color1': const Color(0x00f1c40f),
    'color2': const Color(0x00f39c12),
    'audio1': 'assets/audio/urdu/phonics/zaal.mp3',
    'audio2': 'assets/audio/urdu/phonics/re.mp3',
  },
  {
    'title1': 'ز',
    'title2': 'ڑ',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'جہاز',
          'assets/audio/urdu/words/airplane.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/yak.glb',
          'جہاز',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'جہاز',
          'assets/audio/urdu/words/airplane.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/yak.glb',
          'جہاز',
        ),
      );
    },
    'color1': const Color(0x00e67e22),
    'color2': const Color(0x00d35400),
    'audio1': 'assets/audio/urdu/phonics/ze.mp3',
    'audio2': 'assets/audio/urdu/phonics/Rre.mp3',
  },
  {
    'title1': 'س',
    'title2': 'ش',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'سکہ',
          'assets/audio/urdu/words/coin.mp3',
          'https://github.com/UMChannar/Models/raw/master/urdu/coin.glb',
          'سکہ',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'شیر',
          'assets/audio/urdu/words/lion.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/lion.glb',
          'شیر',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/urdu/phonics/seen.mp3',
    'audio2': 'assets/audio/urdu/phonics/sheen.mp3',
  },
  {
    'title1': 'ص',
    'title2': 'ض',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'شیر',
          'assets/audio/urdu/words/lion.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/lion.glb',
          'شیر',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'شیر',
          'assets/audio/urdu/words/lion.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/lion.glb',
          'شیر',
        ),
      );
    },
    'color1': const Color(0x00f1c40f),
    'color2': const Color(0x00f39c12),
    'audio1': 'assets/audio/urdu/phonics/svaad.mp3',
    'audio2': 'assets/audio/urdu/phonics/zaad.mp3',
  },
  {
    'title1': 'ط',
    'title2': 'ظ',
    'onTap1': () {},
    'onTap2': () {},
    'color1': const Color(0x00e67e22),
    'color2': const Color(0x00d35400),
    'audio1': 'assets/audio/urdu/phonics/toy.mp3',
    'audio2': 'assets/audio/urdu/phonics/zoy.mp3',
  },
  {
    'title1': 'ع',
    'title2': 'غ',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'شیر',
          'assets/audio/urdu/words/lion.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/lion.glb',
          'شیر',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'شیر',
          'assets/audio/urdu/words/lion.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/lion.glb',
          'شیر',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/urdu/phonics/ain.mp3',
    'audio2': 'assets/audio/urdu/phonics/gain.mp3',
  },
  {
    'title1': 'ف',
    'title2': 'ق',
    'onTap1': () {},
    'onTap2': () {},
    'color1': const Color(0x00f1c40f),
    'color2': const Color(0x00f39c12),
    'audio1': 'assets/audio/urdu/phonics/fe.mp3',
    'audio2': 'assets/audio/urdu/phonics/qaaf.mp3',
  },
  {
    'title1': 'ک',
    'title2': 'گ',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'شیر',
          'assets/audio/urdu/words/lion.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/lion.glb',
          'شیر',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'شیر',
          'assets/audio/urdu/words/lion.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/lion.glb',
          'شیر',
        ),
      );
    },
    'color1': const Color(0x00e67e22),
    'color2': const Color(0x00d35400),
    'audio1': 'assets/audio/urdu/phonics/kaaf.mp3',
    'audio2': 'assets/audio/urdu/phonics/gaaf.mp3',
  },
  {
    'title1': 'ل',
    'title2': 'م',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'شیر',
          'assets/audio/urdu/words/lion.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/lion.glb',
          'شیر',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'شیر',
          'assets/audio/urdu/words/lion.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/lion.glb',
          'شیر',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/urdu/phonics/laam.mp3',
    'audio2': 'assets/audio/urdu/phonics/meem.mp3',
  },
  {
    'title1': 'ن',
    'title2': 'و',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'شیر',
          'assets/audio/urdu/words/lion.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/lion.glb',
          'شیر',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'ویگن',
          'assets/audio/urdu/words/car.mp3',
          'https://github.com/UMChannar/Models/raw/master/urdu/car.glb',
          'ویگن',
        ),
      );
    },
    'color1': const Color(0x00f1c40f),
    'color2': const Color(0x00f39c12),
    'audio1': 'assets/audio/urdu/phonics/noon.mp3',
    'audio2': 'assets/audio/urdu/phonics/vaao.mp3',
  },
  {
    'title1': 'ہ',
    'title2': 'ی',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'ہاتھی',
          'assets/audio/urdu/words/elephant.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/elephant.glb',
          'ہاتھی',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'ہاتھی',
          'assets/audio/urdu/words/elephant.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/elephant.glb',
          'ہاتھی',
        ),
      );
    },
    'color1': const Color(0x00e67e22),
    'color2': const Color(0x00d35400),
    'audio1': 'assets/audio/urdu/phonics/chotee-he.mp3',
    'audio2': 'assets/audio/urdu/phonics/ye.mp3',
  },
  {
    'title1': 'ے',
    'title2': 'ے',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'ہاتھی',
          'assets/audio/urdu/words/elephant.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/elephant.glb',
          'ہاتھی',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'ہاتھی',
          'assets/audio/urdu/words/elephant.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/elephant.glb',
          'ہاتھی',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/urdu/phonics/baree-ye.mp3',
    'audio2': 'assets/audio/urdu/phonics/baree-ye.mp3',
  },
];

// ##########################################################################################

List<Map> animalsData = [
  {
    'title1': 'Fox',
    'title2': 'Cat',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'Fox\nOmnivore',
          'assets/audio/animals/sounds/fox.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/Fox.glb',
          'Fox',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'Cat\nCarnivore',
          'assets/audio/animals/sounds/cat.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/cat.glb',
          'Cat',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/animals/words/fox.mp3',
    'audio2': 'assets/audio/animals/words/cat.mp3',
  },
  {
    'title1': 'Dog',
    'title2': 'Lion',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'Dog\nOmnivore',
          'assets/audio/animals/sounds/dog.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/dog.glb',
          'Dog',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'Lion\nCarnivore',
          'assets/audio/animals/sounds/lion.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/lion.glb',
          'Lion',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/animals/words/dog.mp3',
    'audio2': 'assets/audio/animals/words/lion.mp3',
  },
  {
    'title1': 'Wolf',
    'title2': 'Elephant',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'Wolf\nCarnivore',
          'assets/audio/animals/sounds/wolf.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/wolf.glb',
          'Wolf',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'Elephant\nHerbivore',
          'assets/audio/animals/sounds/elephant.mp3',
          'https://github.com/UMChannar/Models/raw/master/english/elephant.glb',
          'Elephant',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/animals/words/wolf.mp3',
    'audio2': 'assets/audio/animals/words/elephant.mp3',
  },
  {
    'title1': 'Tiger',
    'title2': 'Cow',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'Tiger\nCarnivore',
          'assets/audio/animals/sounds/tiger.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/tiger.glb',
          'Tiger',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'Cow\nHerbivore',
          'assets/audio/animals/sounds/cow.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/cow.glb',
          'Cow',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/animals/words/tiger.mp3',
    'audio2': 'assets/audio/animals/words/cow.mp3',
  },
  {
    'title1': 'Sheep',
    'title2': 'Camel',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'Sheep\nHerbivore',
          'assets/audio/animals/sounds/sheep.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/sheep.glb',
          'Sheep',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'Camel\nHerbivore',
          'assets/audio/animals/sounds/camel.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/camel.glb',
          'Camel',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/animals/words/sheep.mp3',
    'audio2': 'assets/audio/animals/words/camel.mp3',
  },
];

// ##########################################################################################

List<Map> birdsData = [
  {
    'title1': 'Sparrow',
    'title2': 'Parrot',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'S => Sparrow',
          'assets/audio/birds/sounds/sparrow.mp3',
          'https://github.com/UMChannar/Models/raw/master/birds/sparrow.glb',
          'Sparrow',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'P => Parrot',
          'assets/audio/birds/sounds/parrot.mp3',
          'https://github.com/UMChannar/Models/raw/master/birds/parrot.glb',
          'Parrot',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/birds/words/sparrow.mp3',
    'audio2': 'assets/audio/birds/words/parrot.mp3',
  },
  {
    'title1': 'Crow',
    'title2': 'Eagle',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'C => Crow',
          'assets/audio/birds/sounds/crow.mp3',
          'https://github.com/UMChannar/Models/raw/master/birds/crow.glb',
          'Crow',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'E => Eagle',
          'assets/audio/birds/sounds/eagle.mp3',
          'https://github.com/UMChannar/Models/raw/master/birds/eagle.glb',
          'Eagle',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/birds/words/crow.mp3',
    'audio2': 'assets/audio/birds/words/eagle.mp3',
  },
  {
    'title1': 'Peacock',
    'title2': 'Seagull',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'P => Peacock',
          'assets/audio/birds/sounds/peacock.mp3',
          'https://github.com/UMChannar/Models/raw/master/birds/peacock.glb',
          'Peacock',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'S => Seagull',
          'assets/audio/birds/sounds/gull.mp3',
          'https://github.com/UMChannar/Models/raw/master/birds/seagull.glb',
          'Seagull',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/birds/words/peacock.mp3',
    'audio2': 'assets/audio/birds/words/seagull.mp3',
  },
  {
    'title1': 'Lapwing',
    'title2': 'MockingBird',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'L => Lapwing',
          'assets/audio/birds/sounds/lapwing.mp3',
          'https://github.com/UMChannar/Models/raw/master/birds/lapwing.glb',
          'Lapwing',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'M => MockingBird',
          'assets/audio/birds/sounds/mockingbird.mp3',
          'https://github.com/UMChannar/Models/raw/master/birds/mocking.glb',
          'MockingBird',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/birds/words/lapwing.mp3',
    'audio2': 'assets/audio/birds/words/mockingbird.mp3',
  },
  {
    'title1': 'Pigeon',
    'title2': 'Finch',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'P => Pigeon',
          'assets/audio/birds/sounds/pigeon.mp3',
          'https://github.com/UMChannar/Models/raw/master/birds/pigeon.glb',
          'Pigeon',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'F => Finch',
          'assets/audio/birds/sounds/finch.mp3',
          'https://github.com/UMChannar/Models/raw/master/animals/camsdsel.glb',
          'Finch',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/birds/words/pigeon.mp3',
    'audio2': 'assets/audio/birds/words/finch.mp3',
  },
];

// ##########################################################################################

List<Map> mathsShapesData = [
  {
    'title1': 'Square',
    'title2': 'Rectangle',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'A four-sided shape with all sides of equal lengths',
          'assets/audio/maths/shapes/square.mp3',
          'https://github.com/UMChannar/Models/raw/master/shapes/square.glb',
          'Sqaure',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'A four-sided shape with opposite sides of equal lengths',
          'assets/audio/maths/shapes/rectanlge.mp3',
          'https://github.com/UMChannar/Models/raw/master/shapes/rectangle.glb',
          'Rectangle',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/maths/shapes/square.mp3',
    'audio2': 'assets/audio/maths/shapes/rectanlge.mp3',
  },
  {
    'title1': 'Circle',
    'title2': 'Triangle',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'A round shape with no corners or edges',
          'assets/audio/maths/shapes/circle.mp3',
          'https://github.com/UMChannar/Models/raw/master/shapes/circle.glb',
          'Circle',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'A three-sided shape with three straight sides and three angles',
          'assets/audio/maths/shapes/triangle.mp3',
          'https://github.com/UMChannar/Models/raw/master/shapes/triangle.glb',
          'Triangle',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/maths/shapes/circle.mp3',
    'audio2': 'assets/audio/maths/shapes/triangle.mp3',
  },
  {
    'title1': 'Heart',
    'title2': 'Diamond',
    'onTap1': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'A shape that resembles the outline of a heart',
          'assets/audio/maths/shapes/heart.mp3',
          'https://github.com/UMChannar/Models/raw/master/shapes/heart.glb',
          'Heart',
        ),
      );
    },
    'onTap2': () {
      Get.toNamed(
        LwrARScreen.routeName,
        arguments: LwrARScreenArguments(
          'A four-sided shape with two pairs of parallel sides',
          'assets/audio/maths/shapes/diamond.mp3',
          'https://github.com/UMChannar/Models/raw/master/shapes/diamond.glb',
          'Diamond',
        ),
      );
    },
    'color1': const Color(0x00c0392b),
    'color2': const Color(0x00cd6155),
    'audio1': 'assets/audio/maths/shapes/heart.mp3',
    'audio2': 'assets/audio/maths/shapes/diamond.mp3',
  },
];

// ##########################################################################################


