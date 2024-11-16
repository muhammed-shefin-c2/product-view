import 'package:flutter/material.dart';
import 'package:flutter2/Widgets/models/Product_Rating.dart';
import 'package:flutter2/Widgets/models/models.dart';

class ProductDesing extends StatelessWidget {
   ProductDesing (this.product, Key? key) : super(key : key);
   ProductModels product;

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: 197,
          height: 354,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade300, width: 2), borderRadius: BorderRadius.circular(10)),
          child: SizedBox(
                    width: 179,
                    height: 354,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 200,
                            height: 175,
                            child: Column( children: [
                              Image.network(this.product.image, width: double.infinity, height: 175,),
                              ColoredBox(color: Colors.grey.shade300),
                            ],
                            )
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 159,
                          decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.grey.shade300, width: 1))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 200,
                              height: 159,
                              child: ColoredBox(
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(this.product.title, style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold,), textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,),
                                    Text(this.product.description, style: TextStyle(color: Colors.black, fontSize: 18,),textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, maxLines: 2,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                    children:[
                                    ProductRating(this.product.rating.rate,),
                                    Text('(${this.product.rating.count.toString()})', textAlign: TextAlign.center, style: TextStyle(color: Colors.black38, fontSize: 17),),
                                        ]),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('\$${this.product.price.toString()}', textAlign: TextAlign.left, style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
                                        Container(
                                          height: 25,
                                          width: 80,
                                          padding: EdgeInsets.all(1.0),
                                          decoration: BoxDecoration(color: Colors.red.shade900, borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Discount",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),),
                                          ),
                                        )
                                      ],
                                    ),
                                  ]
                              )
                              )
                              ),
                          ),
                        ),
                      ],
                    ),
                ),
        ),
      );
  }
}
