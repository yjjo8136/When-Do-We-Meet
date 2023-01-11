import 'package:flutter/material.dart';

import '../components/grid_item.dart';

class TimeSelectPage extends StatefulWidget {
  const TimeSelectPage({Key? key}) : super(key: key);

  @override
  State<TimeSelectPage> createState() => _TimeSelectPageState();
}

class _TimeSelectPageState extends State<TimeSelectPage> {
  late List<Item> itemList;
  late List<Item> selectedList;

  @override
  void initState() {
    loadList();
    super.initState();
  }

  loadList() {
    itemList = [];
    selectedList = [];
    itemList.add(Item("assets/pringles.png", 1));
    itemList.add(Item("assets/pringles.png", 2));
    itemList.add(Item("assets/pringles.png", 3));
    itemList.add(Item("assets/pringles.png", 4));
    itemList.add(Item("assets/pringles.png", 5));
    itemList.add(Item("assets/pringles.png", 6));
    itemList.add(Item("assets/pringles.png", 7));
    itemList.add(Item("assets/pringles.png", 8));
    itemList.add(Item("assets/pringles.png", 9));
    itemList.add(Item("assets/pringles.png", 10));
    itemList.add(Item("assets/pringles.png", 11));
    itemList.add(Item("assets/pringles.png", 12));
    itemList.add(Item("assets/pringles.png", 13));
    itemList.add(Item("assets/pringles.png", 14));
    itemList.add(Item("assets/pringles.png", 15));
    itemList.add(Item("assets/pringles.png", 16));
    itemList.add(Item("assets/pringles.png", 17));
    itemList.add(Item("assets/pringles.png", 18));
    itemList.add(Item("assets/pringles.png", 19));
    itemList.add(Item("assets/pringles.png", 20));
    itemList.add(Item("assets/pringles.png", 21));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: GridView.builder(
          itemCount: itemList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 0.56,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2),
          itemBuilder: (context, index) {
            return GridItem(
                item: itemList[index],
                isSelected: (bool value) {
                  setState(() {
                    if (value) {
                      selectedList.add(itemList[index]);
                    } else {
                      selectedList.remove(itemList[index]);
                    }
                  });
                  print("$index : $value");
                },
                key: Key(itemList[index].rank.toString()));
          }),
    );
  }

  getAppBar() {
    return AppBar(
      title: Text(selectedList.length < 1
          ? "Multi Selection"
          : "${selectedList.length} item selected"),
      actions: <Widget>[
        selectedList.length < 1
            ? Container()
            : InkWell(
                onTap: () {
                  setState(() {
                    for (int i = 0; i < selectedList.length; i++) {
                      itemList.remove(selectedList[i]);
                    }
                    selectedList = [];
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.delete),
                ))
      ],
    );
  }
}

class Item {
  String imageUrl;
  int rank;

  Item(this.imageUrl, this.rank);
}
