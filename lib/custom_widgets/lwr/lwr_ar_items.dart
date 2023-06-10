import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:ar_flutter_plugin/widgets/ar_view.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_with_ar_v1/modules/learn_with_ar/learn_english.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class LwrARItems extends StatefulWidget {
  final String words;
  final String sound;
  final String model;
  final String pageTitle;

  const LwrARItems(this.words, this.sound, this.model, this.pageTitle,
      {super.key});

  @override
  State<LwrARItems> createState() => _LwrARItemsState();
}

class _LwrARItemsState extends State<LwrARItems> {
  late ARSessionManager arSessionManager;
  late ARObjectManager arObjectManager;
  bool isLoading = false;

  ARNode? defaultObjectNode, newNode;
  Offset? lastOffset;

  @override
  void initState() {
    super.initState();
    // onDefaultObjectButtonPressed();
  }

  @override
  void dispose() {
    super.dispose();
    arSessionManager.dispose();
  }

  void onARViewCreated(
    ARSessionManager arSessionManager,
    ARObjectManager arObjectManager,
    ARAnchorManager arAnchorManager,
    ARLocationManager arLocationManager,
  ) {
    this.arSessionManager = arSessionManager;
    this.arObjectManager = arObjectManager;
    this.arObjectManager.onInitialize();
  }

  Future<void> onLocalObjectButtonPressed() async {
    if (defaultObjectNode != null) {
      arObjectManager.removeNode(defaultObjectNode!);
      defaultObjectNode = null;
    } else {
      setState(() {
        isLoading = true;
      });

      newNode = ARNode(
        type: NodeType.webGLB,
        uri: widget.model,
        scale: vector.Vector3(1.5, 1.5, 1.5),
        position: vector.Vector3(0.0, -1, -5),
        rotation: vector.Vector4(1, 0, 0.0, 0.0),
      );
      bool? didAddLocalNode = await arObjectManager.addNode(newNode!);
      defaultObjectNode = (didAddLocalNode!) ? newNode : null;

      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.pink[200]!],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  widget.pageTitle,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        fontSize: 36,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    Audio.load(widget.sound)
                                      ..play()
                                      ..dispose();
                                  },
                                  icon: const Icon(
                                    Icons.volume_up,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    widget.words,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .6,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: InteractiveViewer(
                                child: GestureDetector(
                                  onPanStart: (DragStartDetails details) {
                                    lastOffset = details.localPosition;
                                  },
                                  onPanUpdate: (DragUpdateDetails details) {
                                    if (defaultObjectNode != null) {
                                      final dx = details.localPosition.dx -
                                          lastOffset!.dx;
                                      final dy = details.localPosition.dy -
                                          lastOffset!.dy;
                                      final newPosition = vector.Vector3(
                                        defaultObjectNode!.position.x +
                                            dx / 100,
                                        defaultObjectNode!.position.y -
                                            dy / 100,
                                        defaultObjectNode!.position.z,
                                      );
                                      defaultObjectNode!.position = newPosition;
                                      // arObjectManager.updateNode(defaultObjectNode!);
                                      lastOffset = details.localPosition;
                                    }
                                  },
                                  child: ARView(
                                    onARViewCreated: onARViewCreated,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          onLocalObjectButtonPressed();
                        },
                        child:
                            isLoading // Change button text based on loading state
                                ? const SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.white),
                                    ),
                                  )
                                : Text(
                                    "Show Object",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                  ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 10,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
