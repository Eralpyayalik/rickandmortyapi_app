import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/view_model.dart';
import 'package:provider/provider.dart';
import '../models/Rickandmorty_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rick and Morty",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: _buildGridView(),
    );
  }

  Widget _buildGridView() {
    return Consumer<HomePageViewModel>(
      builder: (context, viewModel, child) => ListView.builder(
        itemCount: viewModel.characters.length,
        itemBuilder: (context, index) {
          Character character = viewModel.characters[index];
          return Card(
            color: Colors.purple,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.network(character.image),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          character.name,
                          style: TextStyle(color: Colors.blue),
                        ),
                        Text(
                          "${character.status} - ${character.species}",
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          character.locationName,
                          style: TextStyle(fontSize: 13, color: Colors.blue),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          character.originName,
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
