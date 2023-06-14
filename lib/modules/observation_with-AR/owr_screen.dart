import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_with_ar_v1/custom_widgets/lwr/lwr_middleman_items.dart';
import 'package:learn_with_ar_v1/custom_widgets/owr/owr_list_items.dart';
import 'package:learn_with_ar_v1/data/subjects_data.dart';
import 'package:learn_with_ar_v1/modules/user/user_profile.dart';
import 'package:learn_with_ar_v1/providers/username_provider.dart';
import 'package:provider/provider.dart';

class ObservationwARScreen extends StatefulWidget {
  const ObservationwARScreen({super.key});

  @override
  State<ObservationwARScreen> createState() => _ObservationwARScreenState();
}

class _ObservationwARScreenState extends State<ObservationwARScreen> {
  @override
  Widget build(BuildContext context) {
    late UsernameProvider _usernameProvider;
    _usernameProvider = Provider.of<UsernameProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.pink[200]!],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Hello little'),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Mr. ${_usernameProvider.username}",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                '\u{1F44B}', // Waving hand emoji
                                style: TextStyle(
                                  fontSize: 26,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            UserProfileScreen.routeName,
                          );
                        },
                        icon: const Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              'Observe the World\nWith AR',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontSize: 24,
                                  ),
                            ),
                          ),
                        ),
                        const Image(
                          image: AssetImage(
                            'assets/images/observation.png',
                          ),
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OWRListItems(
                    title1: 'Mercury',
                    onTap1: () {
                      Get.toNamed(
                        LwrARScreen.routeName,
                        arguments: LwrARScreenArguments(
                          'Mercury is the smallest planet in our solar system and the closest planet to the Sun. It is a rocky, barren world with a heavily cratered surface. Mercury has no atmosphere, so it has extreme temperatures that can range from very hot during the day to very cold at night. ',
                          'assets/audio/planets/mercury.mp3',
                          'https://github.com/UMChannar/Models/raw/master/planets/mercury.glb',
                          'Mercury',
                        ),
                      );
                    },
                    title2: "Venus",
                    onTap2: () {
                      Get.toNamed(
                        LwrARScreen.routeName,
                        arguments: LwrARScreenArguments(
                          'Venus is the second planet from the Sun and is the second brightest object in the night sky after the Moon. Named after the Roman goddess of love and beauty, Venus is the second largest terrestrial planet and is sometimes referred to as the Earth’s sister planet due the their similar size and mass. ',
                          'assets/audio/planets/venus.mp3',
                          'https://github.com/UMChannar/Models/raw/master/planets/venus.glb',
                          'Venus',
                        ),
                      );
                    },
                    color1: Colors.green[200]!,
                    color2: Colors.white,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OWRListItems(
                    title1: 'Earth',
                    onTap1: () {
                      Get.toNamed(
                        LwrARScreen.routeName,
                        arguments: LwrARScreenArguments(
                          'Earth is the third planet from the Sun and is the largest of the terrestrial planets. The Earth is the only planet in our solar system not to be named after a Greek or Roman deity. The Earth was formed approximately 4.54 billion years ago and is the only known planet to support life.',
                          'assets/audio/planets/earth.mp3',
                          'https://github.com/UMChannar/Models/raw/master/planets/earth.glb',
                          'Earth',
                        ),
                      );
                    },
                    title2: "Mars",
                    onTap2: () {
                      Get.toNamed(
                        LwrARScreen.routeName,
                        arguments: LwrARScreenArguments(
                          'Mars is the fourth planet from the Sun and is the second smallest planet in the solar system. Named after the Roman god of war, Mars is also often described as the “Red Planet” due to its reddish appearance. Mars is a terrestrial planet with a thin atmosphere composed primarily of carbon dioxide.',
                          'assets/audio/planets/mars.mp3',
                          'https://github.com/UMChannar/Models/raw/master/planets/mars.glb',
                          'Mars',
                        ),
                      );
                    },
                    color1: Colors.yellow[200]!,
                    color2: Colors.greenAccent[200]!,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OWRListItems(
                    title1: 'Jupiter',
                    onTap1: () {
                      Get.toNamed(
                        LwrARScreen.routeName,
                        arguments: LwrARScreenArguments(
                          'Jupiter is the fifth planet from the Sun and is the largest planet in the solar system. Jupiter is the fourth brightest object in the sky (after the Sun, the Moon and Venus). It has been known since prehistoric times as a bright “wandering star”. ',
                          'assets/audio/planets/jupiter.mp3',
                          'https://github.com/UMChannar/Models/raw/master/planets/jupiter.glb',
                          'Jupiter',
                        ),
                      );
                    },
                    title2: "Saturn",
                    onTap2: () {
                      Get.toNamed(
                        LwrARScreen.routeName,
                        arguments: LwrARScreenArguments(
                          'Saturn is the sixth planet from the Sun and is the second largest in the solar system with an equatorial diameter of 119,300 km. Saturn was known to the ancients, including the Babylonians and Far Eastern observers. It is named for the Roman god Saturnus, and was known to the Greeks as Cronus.',
                          'assets/audio/planets/saturn.mp3',
                          'https://github.com/UMChannar/Models/raw/master/planets/saturn.glb',
                          'Saturn',
                        ),
                      );
                    },
                    color1: Colors.red[200]!,
                    color2: Colors.pinkAccent[200]!,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OWRListItems(
                    title1: 'Uranus',
                    onTap1: () {
                      Get.toNamed(
                        LwrARScreen.routeName,
                        arguments: LwrARScreenArguments(
                          'Uranus is the seventh planet from the Sun. While being visible to the naked eye, it was not recognised as a planet due to its dimness and slow orbit. Uranus became the first planet discovered with the use of a telescope.',
                          'assets/audio/planets/uranus.mp3',
                          'https://github.com/UMChannar/Models/raw/master/planets/uranus.glb',
                          'Uranus',
                        ),
                      );
                    },
                    title2: "Neptune",
                    onTap2: () {
                      Get.toNamed(
                        LwrARScreen.routeName,
                        arguments: LwrARScreenArguments(
                          'Neptune is the eighth planet from the Sun making it the most distant in the solar system. This gas giant planet may have formed much closer to the Sun in early solar system history before migrating to its present position.',
                          'assets/audio/planets/neptune.mp3',
                          'https://github.com/UMChannar/Models/raw/master/planets/neptune.glb',
                          'Neptune',
                        ),
                      );
                    },
                    color1: Colors.white,
                    color2: Colors.green[200]!,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
