import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:troy_ox_street/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel _product;

  const ProductCard({Key? key, required ProductModel product, scrollCon})
      : _product = product,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              const BoxShadow(
                  color: Color.fromRGBO(126, 132, 156, .1),
                  blurRadius: 15,
                  offset: Offset(0, 6)),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: _product.imageUrls![0],
              imageBuilder: (context, imageProvider) => Container(
                height: 115,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.cover),
                ),
                child: _product.justDropped
                    ? Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              width: 60,
                              height: 25,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              decoration: const BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  )),
                              child: const Text(
                                "Dropped",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      )
                    : null,
              ),
              placeholder: (context, url) => const SizedBox(
                height: 115,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              errorWidget: (context, url, error) => const SizedBox(
                height: 115,
                child: Center(
                  child: Icon(Icons.error),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _product.name,
                      maxLines: 1,
                      style: TextStyle(
                          color: Theme.of(context).primaryColorDark,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      _product.description ?? "",
                      maxLines: 3,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Rank: ${_product.rank.toString()}",
                    style: const TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  Text(_product.status.toUpperCase(),
                      style: TextStyle(
                          fontSize: 10,
                          color: _product.status == "active"
                              ? Colors.green[700]
                              : Colors.red[700]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
