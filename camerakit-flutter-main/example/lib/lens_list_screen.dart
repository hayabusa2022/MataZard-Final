import 'package:camerakit_flutter/lens_model.dart';
import 'package:flutter/material.dart';

class LensListView extends StatefulWidget {
  final List<Lens> lensList;

  const LensListView({Key? key, required this.lensList}) : super(key: key);

  @override
  State<LensListView> createState() => _LensListWidgetState();
}

class _LensListWidgetState extends State<LensListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Information and Tips'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(10, (index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.arrow_drop_down_circle),
                    title: Text('Card title ${index + 1}'),
                    subtitle: Text(
                      'Secondary Text',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
