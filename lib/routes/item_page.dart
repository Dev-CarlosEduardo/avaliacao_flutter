import 'package:avaliacaoflutter/routes/profile_page.dart';
import 'package:avaliacaoflutter/widgets/house_cache.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          Image.asset("lib/assets/vector.png"),
        ],
        title: Text(
          'All items',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => ProfilePage())));
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        child: Consumer<HouseCache>(
          builder: (context, cache, _) {
            return ListView.builder(
              itemCount: cache.list.length,
              itemBuilder: (context, index) {
                return SizedBox(
                    width: 158,
                    height: 186,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset(cache.list[index].image),
                          title: Text(
                            "${cache.list[index].description}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          onTap: () {
                            // cache.index = index;
                            // _open(context);
                          },
                        ),
                      ],
                    ));
              },
            );
          },
        ),
      ),
    );
  }
}
