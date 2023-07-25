import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_places/providers/user_places.dart';

// Before it was a StatefulWidget.
class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController = TextEditingController();

  void _savePlace() {
    final enteredTitle = _titleController.text;
    if (enteredTitle.isEmpty) {
      return;
    }

    ref.read(userPlacesProvider.notifier).addPlace(enteredTitle);

    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new Place'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              controller: _titleController,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: _savePlace,
              label: const Text(
                'Add Place',
              ),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
