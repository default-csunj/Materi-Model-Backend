// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './data/data_post.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Learn Model"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: ListView(
            children: lists
                .map((list) => Card(
                      child: ListTile(
                        leading: Container(
                            height: double.infinity,
                            child: Icon(Icons.person_outline)),
                        title: Text(list.title!),
                        subtitle: Text(list.subtitle!),
                        trailing: Icon(Icons.more_vert),
                      ),
                    ))
                .toList()),
      ),
    );
  }
}

