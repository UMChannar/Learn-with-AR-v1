import 'dart:ui';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learn_with_ar_v1/custom_widgets/lwr/lwr_ar_items.dart';
import 'package:learn_with_ar_v1/custom_widgets/lwr/lwr_middleman_items.dart';
import 'package:learn_with_ar_v1/data/subjects_data.dart';
import 'package:learn_with_ar_v1/modules/user/user_profile.dart';
import 'package:learn_with_ar_v1/providers/username_provider.dart';
import 'package:provider/provider.dart';

class ImageRecognitionScreen extends StatefulWidget {
  const ImageRecognitionScreen({super.key});

  @override
  State<ImageRecognitionScreen> createState() => _ImageRecognitionScreenState();
}

class _ImageRecognitionScreenState extends State<ImageRecognitionScreen> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  List<ImageLabel> _labels = [];

  Future<void> _getImageAndDetectLabels() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      final imageLabeler = GoogleMlKit.vision.imageLabeler();
      final inputImage = InputImage.fromFile(_image!);
      final labels = await imageLabeler.processImage(inputImage);
      setState(() {
        _labels = labels;
      });
      await imageLabeler.close();
    }
  }

  Widget _getLabelButton() {
    if (_labels.isEmpty) {
      return const SizedBox();
    }

    // Check if the labels have high confidence in cat, dog, or car.
    double catConfidence = 0;
    double dogConfidence = 0;
    double carConfidence = 0;
    double flowerConfidence = 0;
    double birdConfidence = 0;
    double mountainConfidence = 0;
    for (final label in _labels) {
      if (label.label == 'Cat' && label.confidence > catConfidence) {
        catConfidence = label.confidence;
      } else if (label.label == 'Dog' && label.confidence > dogConfidence) {
        dogConfidence = label.confidence;
      } else if (label.label == 'Car' && label.confidence > carConfidence) {
        carConfidence = label.confidence;
      } else if (label.label == 'Flower' &&
          label.confidence > flowerConfidence) {
        flowerConfidence = label.confidence;
      } else if (label.label == 'Bird' && label.confidence > birdConfidence) {
        birdConfidence = label.confidence;
      } else if (label.label == 'Mountain' &&
          label.confidence > mountainConfidence) {
        mountainConfidence = label.confidence;
      }
    }

    // Return a button based on the highest confidence value.
    if (catConfidence > dogConfidence &&
        catConfidence > carConfidence &&
        catConfidence > flowerConfidence &&
        catConfidence > birdConfidence &&
        catConfidence > mountainConfidence) {
      return Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Get.toNamed(
              LwrARScreen.routeName,
              arguments: LwrARScreenArguments(
                'Cat is a small carnivorous mammal that is kept as a common household pet, known for its playful and affectionate behavior towards humans.',
                'assets/audio/image_recog/cat.mp3',
                'https://github.com/UMChannar/Models/raw/master/animals/cat.glb',
                'Cat',
              ),
            );
          },
          child: Text(
            'See the cat model',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      );
    } else if (dogConfidence > catConfidence &&
        dogConfidence > carConfidence &&
        dogConfidence > flowerConfidence &&
        dogConfidence > birdConfidence &&
        dogConfidence > mountainConfidence) {
      return Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Get.toNamed(
              LwrARScreen.routeName,
              arguments: LwrARScreenArguments(
                'Dog is a domesticated mammal that is kept as a pet or used for various purposes, known for its loyalty, intelligence, and ability to form strong bonds with humans.',
                'assets/audio/image_recog/dog.mp3',
                'https://github.com/UMChannar/Models/raw/master/english/dog.glb',
                'Dog',
              ),
            );
          },
          child: Text(
            'See the dog model',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      );
    } else if (carConfidence > catConfidence &&
        carConfidence > dogConfidence &&
        carConfidence > flowerConfidence &&
        carConfidence > birdConfidence &&
        carConfidence > mountainConfidence) {
      return Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Get.toNamed(
              LwrARScreen.routeName,
              arguments: LwrARScreenArguments(
                'Car is a motor vehicle with four wheels designed for transportation on roads, typically powered by an internal combustion engine or an electric motor.',
                'assets/audio/image_recog/car.mp3',
                'https://github.com/UMChannar/Models/raw/master/urdu/car.glb',
                'Car',
              ),
            );
          },
          child: Text(
            'See the car model',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      );
    } else if (flowerConfidence > catConfidence &&
        flowerConfidence > dogConfidence &&
        flowerConfidence > carConfidence &&
        flowerConfidence > birdConfidence &&
        flowerConfidence > mountainConfidence) {
      return Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Get.toNamed(
              LwrARScreen.routeName,
              arguments: LwrARScreenArguments(
                'A flower is a pretty thing that grows on plants. It smells nice and is very colorful. Bees and butterflies like to visit flowers to get nectar and help the flower make new seeds.',
                'assets/audio/image_recog/flower.mp3',
                'https://github.com/UMChannar/Models/raw/master/margarita_flower.glb',
                'Flower',
              ),
            );
          },
          child: Text(
            'See the flower model',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      );
    } else if (birdConfidence > catConfidence &&
        birdConfidence > dogConfidence &&
        birdConfidence > carConfidence &&
        birdConfidence > mountainConfidence &&
        birdConfidence > flowerConfidence) {
      return Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Get.toNamed(
              LwrARScreen.routeName,
              arguments: LwrARScreenArguments(
                'Birds are fascinating creatures that can be found all around us.',
                'assets/audio/image_recog/bird.mp3',
                'https://github.com/UMChannar/Models/raw/master/birds_recog.glb',
                'Birds',
              ),
            );
          },
          child: Text(
            'See the Bird model',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      );
    } else if (mountainConfidence > catConfidence &&
        mountainConfidence > dogConfidence &&
        mountainConfidence > carConfidence &&
        mountainConfidence > flowerConfidence &&
        mountainConfidence > birdConfidence) {
      return Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Get.toNamed(
              LwrARScreen.routeName,
              arguments: LwrARScreenArguments(
                'Mountains are very tall and big landforms that reach high into the sky. They are made of rocks and have steep slopes.',
                'assets/audio/image_recog/mountain.mp3',
                'https://github.com/UMChannar/Models/raw/master/mountain.glb',
                'Mountains',
              ),
            );
          },
          child: Text(
            'See the Mountain model',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      );
    } else {
      return Text(
        'No Image Detected',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                'These Objects are detectable',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black,
                    ),
              ),
              content: Text(
                'Cat \n\nDog \n\nCar \n\nFlower \n\nBird \n\nMountain',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              actions: [
                TextButton(
                  child: Text(
                    'I Understand',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                        ),
                  ),
                  onPressed: () {
                    Navigator.pop(context); // Remove the alert dialog
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

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
            padding: const EdgeInsets.all(15),
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    "Let's Recognize with AR",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'Choose an image from your gallery and let the app recognize the object in the image.',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: _image == null
                        ? const Text('No image selected.')
                        : Image.file(_image!),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: _getImageAndDetectLabels,
                      child: Text(
                        'Choose an image',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  if (_labels.isNotEmpty)
                    _getLabelButton()
                  else
                    Center(
                      child: Text(
                        'No Image Detected',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
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
