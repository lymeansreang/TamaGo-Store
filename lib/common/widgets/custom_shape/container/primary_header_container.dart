import 'package:flutter/material.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/circular_container.dart';
import 'package:tamago_store/common/widgets/custom_shape/curved_edges/curved_edge_widget.dart';
import 'package:tamago_store/utils/constants/colors.dart';

class MyPrimaryHeaderContainer extends StatelessWidget {
  const MyPrimaryHeaderContainer({
    super.key,required this.child
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MyCurvedEdgeWidget(
      child: Container(
        color: MyColors.primaryColor,
        padding: const EdgeInsets.only(bottom: 0),

        /// -- If [size.isFinite' : is not true.in Stack] error occurred -> Read README.md file
        child: SizedBox(
          // height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: MyCircularContainer(backgroundColor: MyColors.white.withOpacity(0.1),)),
              Positioned(
                  top: 100,
                  right: -300,
                  child: MyCircularContainer(backgroundColor: MyColors.white.withOpacity(0.1),)),
              child,
            ],
          ),
        ),
      ),
    );
  }
}