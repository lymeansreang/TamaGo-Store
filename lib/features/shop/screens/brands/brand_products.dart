import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/brand/brand_card.dart';
import 'package:tamago_store/common/widgets/product/sortable/sortable_products.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: Text('Nike'),),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [

              /// Brand Detail
              MyBrandCard(showBorder: true),
              SizedBox(height: MySizes.spaceBtwSections,),

              MySortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
