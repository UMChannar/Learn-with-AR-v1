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
