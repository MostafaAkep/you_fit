import 'package:flutter/material.dart';

class PricingPayContainer extends StatefulWidget {
  const PricingPayContainer({
    super.key,
    required this.price,
    required this.width,
  });

  final String price;
  final String width;

  @override
  State<PricingPayContainer> createState() => _PricingPayContainerState();
}

class _PricingPayContainerState extends State<PricingPayContainer> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xff222222),
        borderRadius: BorderRadius.circular(12),
        border: isClicked
            ? Border.all(
                color: const Color(0xffFFE53B),
                strokeAlign: BorderSide.strokeAlignOutside)
            : null,
        boxShadow: isClicked
            ? [
                BoxShadow(
                  color: const Color(0xffFFE53B).withAlpha(90),
                  blurRadius: 6.0,
                  spreadRadius: 3.0,
                  offset: const Offset(
                    0.0,
                    0.0,
                  ),
                ),
              ]
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            icon: isClicked
                ? const Icon(Icons.radio_button_on)
                : const Icon(Icons.radio_button_off),
            onPressed: () {
              setState(() {
                isClicked = !isClicked;
              });
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.width} Plan',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Billed ${widget.width} | Cancel anytime'),
              RichText(
                text: TextSpan(
                  text: 'for only',
                  children: [
                    TextSpan(
                      text: widget.price,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
