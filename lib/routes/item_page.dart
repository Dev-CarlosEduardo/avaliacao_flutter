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
      appBar: AppBar(),
      body: SizedBox(
        width: 200,
        child: Consumer<HouseCache>(
          builder: (context, cache, _) {
            return ListView.builder(
              itemCount: cache.list.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 238,
                  height: 141,
                  child: ListTile(
                    leading: Image.asset(cache.list[index].image),
                    title: Text(
                      "${cache.list[index].description}}",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      "${cache.list[index].description}",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(0xFF, 0x40, 0xBF, 0xFF),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onTap: () {
                      // cache.index = index;
                      // _open(context);
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
