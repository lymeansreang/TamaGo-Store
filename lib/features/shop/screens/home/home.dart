import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/circular_container.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:tamago_store/common/widgets/custom_shape/curved_edges/curved_edge_widget.dart';
import 'package:tamago_store/common/widgets/custom_shape/curved_edges/curved_edges.dart';
import 'package:tamago_store/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyPrimaryHeaderContainer(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}






