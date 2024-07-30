import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FilterWishlist extends StatefulWidget {
  const FilterWishlist({
    super.key,
    required this.w,
    required this.h,
    required this.arrSize,
  });

  final double w;
  final double h;
  final List<String> arrSize;

  @override
  State<FilterWishlist> createState() => _FilterWishlistState();
}

class _FilterWishlistState extends State<FilterWishlist> {
  RangeValues value = const RangeValues(0, 40);
  double rating = 0;
// bool isColor0=false;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> arrColour = [
      {'color': 'Blue'},
      {'color': 'White'},
      {'color': 'Grey'},
      {'color': 'Black'},
      {'color': 'Light Blue'},
      {'color': 'Orange'},
    ];
    RangeLabels label =
        RangeLabels(value.start.toString(), value.end.toString());

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.w * 0.0417),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(top: widget.h * 0.0283),
            child: Text(
              'Filter',
              style:
                  TextStyle(fontFamily: 'Mont_b', fontSize: widget.w * 0.0445),
            ),
          ),
          Divider(
            height: widget.h * 0.028,
            color: const Color.fromARGB(255, 233, 233, 233),
            thickness: widget.h * 0.001307,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: widget.h * 0.0130),
            child: Row(
              children: [
                Text(
                  'Size',
                  style: TextStyle(
                      fontFamily: "Mont_s",
                      color: const Color.fromARGB(255, 128, 121, 121),
                      fontSize: widget.w * 0.039),
                ),
              ],
            ),
          ),
          // Row(
          //   children: [
          //     SizedBox(
          //       // color: Colors.black,
          //       width: w * 0.8,
          //       child: Row(
          //         mainAxisAlignment:
          //             MainAxisAlignment
          //                 .spaceBetween,
          //         children: [
          //           InkWell(
          //             onTap: () {},
          //             child: Container(
          //                 decoration: BoxDecoration(
          //                     borderRadius:
          //                         BorderRadius
          //                             .circular(w *
          //                                 0.0139),
          //                     border: Border.all(
          //                         color: const Color
          //                                 .fromARGB(
          //                             255,
          //                             112,
          //                             112,
          //                             112),
          //                         width: w *
          //                             0.000835)),
          //                 height: h * 0.025,
          //                 width: w * 0.120,
          //                 child: Center(
          //                   child: Text(
          //                     "S",
          //                     style: TextStyle(
          //                         fontSize:
          //                             w * 0.0334,
          //                         fontFamily:
          //                             "Mont_b",
          //                         color: Colors
          //                             .black),
          //                   ),
          //                 )),
          //           ),
          //           InkWell(
          //             onTap: () {},
          //             child: Container(
          //                 decoration: BoxDecoration(
          //                     borderRadius:
          //                         BorderRadius
          //                             .circular(w *
          //                                 0.0139),
          //                     border: Border.all(
          //                         color: const Color
          //                                 .fromARGB(
          //                             255,
          //                             112,
          //                             112,
          //                             112),
          //                         width: w *
          //                             0.000835)),
          //                 height: h * 0.025,
          //                 width: w * 0.120,
          //                 child: Center(
          //                   child: Text(
          //                     "M",
          //                     style: TextStyle(
          //                         fontSize:
          //                             w * 0.0334,
          //                         fontFamily:
          //                             "Mont_b",
          //                         color: Colors
          //                             .black),
          //                   ),
          //                 )),
          //           ),
          //           InkWell(
          //             onTap: () {},
          //             child: Container(
          //                 decoration: BoxDecoration(
          //                     borderRadius:
          //                         BorderRadius
          //                             .circular(w *
          //                                 0.0139),
          //                     border: Border.all(
          //                         color: const Color
          //                                 .fromARGB(
          //                             255,
          //                             112,
          //                             112,
          //                             112),
          //                         width: w *
          //                             0.000835)),
          //                 height: h * 0.025,
          //                 width: w * 0.120,
          //                 child: Center(
          //                   child: Text(
          //                     "L",
          //                     style: TextStyle(
          //                         fontSize:
          //                             w * 0.0334,
          //                         fontFamily:
          //                             "Mont_b",
          //                         color: Colors
          //                             .black),
          //                   ),
          //                 )),
          //           ),
          //           InkWell(
          //             onTap: () {},
          //             child: Container(
          //                 decoration: BoxDecoration(
          //                     borderRadius:
          //                         BorderRadius
          //                             .circular(w *
          //                                 0.0139),
          //                     border: Border.all(
          //                         color: const Color
          //                                 .fromARGB(
          //                             255,
          //                             112,
          //                             112,
          //                             112),
          //                         width: w *
          //                             0.000835)),
          //                 height: h * 0.025,
          //                 width: w * 0.120,
          //                 child: Center(
          //                   child: Text(
          //                     "XL",
          //                     style: TextStyle(
          //                         fontSize:
          //                             w * 0.0334,
          //                         fontFamily:
          //                             "Mont_b",
          //                         color: Colors
          //                             .black),
          //                   ),
          //                 )),
          //           ),
          //           InkWell(
          //             onTap: () {},
          //             child: Container(
          //                 decoration: BoxDecoration(
          //                     borderRadius:
          //                         BorderRadius
          //                             .circular(w *
          //                                 0.0139),
          //                     border: Border.all(
          //                         color: const Color
          //                                 .fromARGB(
          //                             255,
          //                             112,
          //                             112,
          //                             112),
          //                         width: w *
          //                             0.000835)),
          //                 height: h * 0.025,
          //                 width: w * 0.120,
          //                 child: Center(
          //                   child: Text(
          //                     "2XL",
          //                     style: TextStyle(
          //                         fontSize:
          //                             w * 0.0334,
          //                         fontFamily:
          //                             "Mont_b",
          //                         color: Colors
          //                             .black),
          //                   ),
          //                 )),
          //           ),
          //           InkWell(
          //             onTap: () {},
          //             child: Container(
          //                 decoration: BoxDecoration(
          //                     borderRadius:
          //                         BorderRadius
          //                             .circular(w *
          //                                 0.0139),
          //                     border: Border.all(
          //                         color: const Color
          //                                 .fromARGB(
          //                             255,
          //                             112,
          //                             112,
          //                             112),
          //                         width: w *
          //                             0.000835)),
          //                 height: h * 0.025,
          //                 width: w * 0.120,
          //                 child: Center(
          //                   child: Text(
          //                     "3XL",
          //                     style: TextStyle(
          //                         fontSize:
          //                             w * 0.0334,
          //                         fontFamily:
          //                             "Mont_b",
          //                         color: Colors
          //                             .black),
          //                   ),
          //                 )),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(
            height: 20,
            // width: 40,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.arrSize.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(widget.w * 0.0139),
                          border: Border.all(
                              color: const Color.fromARGB(255, 112, 112, 112),
                              width: widget.w * 0.000835)),
                      child: Center(
                        child: Text(
                          widget.arrSize[index],
                          style: TextStyle(
                              fontSize: widget.w * 0.0334,
                              fontFamily: "Mont_b",
                              color: Colors.black),
                        ),
                      )),
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: widget.h * 0.0130),
            child: Row(
              children: [
                Text(
                  'Color',
                  style: TextStyle(
                      fontFamily: "Mont_s",
                      color: const Color.fromARGB(255, 128, 121, 121),
                      fontSize: widget.w * 0.039),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
            // width: 40,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: arrColour.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        print("tapping");
                        selectedIndex = index;
                        print(selectedIndex);
                      });
                    },
                    child: Container(
                        height: 20,
                        // width: 40,
                        decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? Colors.black
                                : Colors.white,
                            borderRadius:
                                BorderRadius.circular(widget.w * 0.0139),
                            border: Border.all(
                                color: const Color.fromARGB(255, 112, 112, 112),
                                width: widget.w * 0.000835)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: Text(
                              arrColour[index]['color'],
                              style: TextStyle(
                                  fontSize: widget.w * 0.032,
                                  fontFamily: "Mont_b",
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        )),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 20,
            // width: 40,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: arrColour.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                      height: 20,
                      // width: 40,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(widget.w * 0.0139),
                          border: Border.all(
                              color: const Color.fromARGB(255, 112, 112, 112),
                              width: widget.w * 0.000835)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Text(
                            arrColour[index]['color'],
                            style: TextStyle(
                                fontSize: widget.w * 0.032,
                                fontFamily: "Mont_b",
                                color: Colors.black),
                          ),
                        ),
                      )),
                );
              },
            ),
          ),

          // Expanded(
          //   child: GridView.builder(
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 6,
          //       mainAxisSpacing: 8,
          //       crossAxisSpacing: 2.2,
          //       childAspectRatio: 2.5,
          //       // mainAxisExtent: 20,
          //     ),
          //     itemCount: arrColor.length,
          //     itemBuilder: (context, index) {
          //       return Container(
          //           padding: EdgeInsets.zero,
          //           margin: EdgeInsets.zero,
          //           // height: 20,
          //           // width: 40,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(widget.w * 0.0139),
          //               border: Border.all(
          //                   color: const Color.fromARGB(255, 112, 112, 112),
          //                   width: widget.w * 0.000835)),
          //           child: Center(
          //             child: Text(
          //               arrColor[index],
          //               style: TextStyle(
          //                   fontSize: widget.w * 0.022,
          //                   fontFamily: "Mont_b",
          //                   color: Colors.black),
          //             ),
          //           ));
          //     },
          //   ),
          // ),

          Padding(
            padding: EdgeInsets.only(top: widget.h * 0.0130),
            child: Row(
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                      fontFamily: "Mont_s",
                      color: const Color.fromARGB(255, 128, 121, 121),
                      fontSize: widget.w * 0.039),
                ),
              ],
            ),
          ),
          SliderTheme(
            data: const SliderThemeData(
                valueIndicatorColor: Colors.black,
                showValueIndicator: ShowValueIndicator.always,
                activeTrackColor: Colors.black,
                inactiveTrackColor: Colors.grey,
                trackHeight: 18,
                thumbColor: Colors.white,
                valueIndicatorTextStyle:
                    TextStyle(fontSize: 10, color: Colors.white)),
            child: RangeSlider(
              labels: label,
              values: value,
              min: 0,
              max: 100,
              divisions: 10,
              onChanged: (newValue) {
                setState(() {
                  value = newValue;
                });
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.only(bottom: widget.h * 0.008),
            child: Row(
              children: [
                Text(
                  'Rating',
                  style: TextStyle(
                      fontFamily: "Mont_s",
                      color: const Color.fromARGB(255, 128, 121, 121),
                      fontSize: widget.w * 0.039),
                ),
              ],
            ),
          ),
          // Row(
          //   children: [
          //     SizedBox(
          //       width: widget.w * 0.306,
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Image.asset('assets/images/greenStar.png'),
          //           Image.asset('assets/images/greenStar.png'),
          //           Image.asset('assets/images/emptyStar.png'),
          //           Image.asset('assets/images/emptyStar.png'),
          //           Image.asset('assets/images/emptyStar.png'),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),

          Row(
            children: [
              RatingBar.builder(
                glowColor: Colors.amber,
                itemSize: 35,
                tapOnlyMode: true,
                itemPadding: EdgeInsets.zero,
                glow: false,
                unratedColor: Colors.grey,
                itemBuilder: (context, index) {
                  return Icon(
                    rating <= index ? Icons.star_border_sharp : Icons.star,
                    color: Colors.green,
                  );
                },
                onRatingUpdate: (ratingValue) {
                  setState(() {
                    rating = ratingValue;
                  });
                },
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(
                top: widget.h * 0.0318, bottom: widget.h * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 235, 235, 235),
                        elevation: 0,
                        minimumSize: Size(widget.w * 0.44, widget.h * 0.056)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Close',
                      style: TextStyle(
                          fontFamily: "Mont_s",
                          fontSize: widget.w * 0.0390,
                          color: const Color.fromARGB(255, 128, 121, 121)),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 17, 17, 17),
                        elevation: 0,
                        minimumSize: Size(widget.w * 0.44, widget.h * 0.056)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Apply',
                      style: TextStyle(
                          fontFamily: "Mont_s",
                          fontSize: widget.w * 0.0390,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
