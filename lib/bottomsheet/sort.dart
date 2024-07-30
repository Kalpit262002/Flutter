import 'package:flutter/material.dart';

class SortFilter extends StatefulWidget {
  const SortFilter({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  State<SortFilter> createState() => _SortFilterState();
}

class _SortFilterState extends State<SortFilter> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.h * 0.38,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(top: widget.h * 0.0283),
            child: Text(
              'Sort Option',
              style:
                  TextStyle(fontFamily: 'Mont_b', fontSize: widget.w * 0.0445),
            ),
          ),
          Divider(
            height: widget.h * 0.028,
            color: const Color.fromARGB(255, 233, 233, 233),
            thickness: widget.h * 0.001307,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return SizedBox(
                    height: widget.h * 0.046,
                    child: CheckboxListTile(
                      shape: const CircleBorder(),
                      value: isChecked,
                      onChanged: (newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      },
                      title: Text(
                        'Price High to low',
                        style: TextStyle(
                            fontFamily: "Mont_s",
                            color: const Color.fromARGB(255, 128, 121, 121),
                            fontSize: widget.w * 0.039),
                      ),
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                    ));
              },
              itemCount: 4,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: widget.h * 0.028,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 235, 235, 235),
                        elevation: 0,
                        minimumSize: Size(widget.w * 0.459, widget.h * 0.058)),
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
                        minimumSize: Size(widget.w * 0.459, widget.h * 0.058)),
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
          )
        ],
      ),
    );
  }
}
