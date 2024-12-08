import 'package:flutter/material.dart';
import 'package:shopping_cart/models/Product.class.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var myList = <Product> [
    Product(1, 'NOKIA-C1', 99, "99 %", "https://www.tunisianet.com.tn/227055-large/smartphone-nokia-c1-2eme-edition-3g-1-go-16-go-double-sim-bleu.jpg"),
    Product(2, 'BENCO-Y30', 85, "87 %", "https://electro-select.com/wp-content/uploads/2022/03/20210323160347_2358.jpg"),
    Product(3, 'ITEL-P38', 89, "89 %", "https://tunisiatech.tn/8033-large_default/smartphone-itel-p38.jpg"),
    Product(4, 'SPARKGO22', 75, "80 %", "https://www.mega.tn/assets/uploads/img/pr_telephonie_mobile/1543051941_211.jpg"),
    Product(5, 'POP2F', 70, "65 %", "https://www.technopro-online.com/41138-large_default/smartphone-tecnopop-2f-noir-tecno-pop2f-black.jpg"), 
    Product(6, 'POP2F', 70, "65 %", "https://www.technopro-online.com/41138-large_default/smartphone-tecnopop-2f-noir-tecno-pop2f-black.jpg"), 
    Product(7, 'POP2F', 70, "65 %", "https://www.technopro-online.com/41138-large_default/smartphone-tecnopop-2f-noir-tecno-pop2f-black.jpg"), 
    Product(8, 'POP2F', 70, "65 %", "https://www.technopro-online.com/41138-large_default/smartphone-tecnopop-2f-noir-tecno-pop2f-black.jpg"), 
    Product(9, 'POP2F', 70, "65 %", "https://www.technopro-online.com/41138-large_default/smartphone-tecnopop-2f-noir-tecno-pop2f-black.jpg"), 
    Product(10, 'POP2F', 70, "65 %", "https://www.technopro-online.com/41138-large_default/smartphone-tecnopop-2f-noir-tecno-pop2f-black.jpg"), 
    Product(11, 'POP2F', 70, "65 %", "https://www.technopro-online.com/41138-large_default/smartphone-tecnopop-2f-noir-tecno-pop2f-black.jpg"), 
    Product(12, 'POP2F', 70, "65 %", "https://www.technopro-online.com/41138-large_default/smartphone-tecnopop-2f-noir-tecno-pop2f-black.jpg"), 
    Product(13, 'POP2F', 70, "65 %", "https://www.technopro-online.com/41138-large_default/smartphone-tecnopop-2f-noir-tecno-pop2f-black.jpg"), 
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.deepPurpleAccent,
            title: Text("Products"),
            expandedHeight: 20,
            collapsedHeight: 80,
          ),
          const SliverAppBar(
            backgroundColor: Colors.deepOrangeAccent,
            title: Text("Product list"),
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  margin: const EdgeInsets.all(15),
                  child: Container(
                    color: Colors.blue[100 * (index % 9 + 1)],
                    height: 80,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          onTap: () {
                          Navigator.of(context).pushNamed("/details", arguments: myList[index]);
                          },
                            leading: Hero(
                            tag: myList[index].usn,
                            transitionOnUserGestures: true,
                            child: Image.network(myList[index].image,fit:BoxFit.cover),
                          ), 

                          //leading: Image.network(myList[index].image, fit: BoxFit.cover,),
                          title: Text(
                            myList[index].designation,
                            style: const TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(myList[index].pourcentage), 
                        )
                      ],
                    ),
                    ), 
                );
              },
              childCount: myList.length // number of elements in the list
            )
          )
        ],
      ),
    );
  }
}