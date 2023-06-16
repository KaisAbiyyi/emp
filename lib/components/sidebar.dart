import 'package:flutter/material.dart';
import 'package:movie_player/config/appcolor.dart';

class Sidebar extends StatefulWidget {
  final Function(int) onDataSelected;
  const Sidebar({Key? key, required this.onDataSelected}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  void _handleDataSelected(int data) {
    if (widget.onDataSelected != '') {
      widget.onDataSelected(data); // Invoke the callback function
    }
  }

  bool LinkDashboardHover = false;
  bool LinkFavoriteHover = false;
  bool LinkStarsHover = false;
  bool LinkStarsClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.only(left: 16, top: 16, bottom: 16),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.Slate50,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 125,
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.Slate300),
              ),
            ),
            child: InkWell(
              onTap: () => _handleDataSelected(0),
              child: Center(
                child: Text(
                  'EMP',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: AppColors.Slate700,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(16),
              child: Wrap(
                runSpacing: 8,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: LinkDashboardHover
                          ? AppColors.Rose800
                          : AppColors.Slate50,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: InkWell(
                      onTap: () => _handleDataSelected(0),
                      onHover: (value) {
                        setState(
                          () => LinkDashboardHover = value,
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'DASHBOARD',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: LinkDashboardHover
                                ? AppColors.Slate50
                                : AppColors.Slate400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: LinkFavoriteHover
                          ? AppColors.Rose800
                          : AppColors.Slate50,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: InkWell(
                      onTap: () => _handleDataSelected(1),
                      onHover: (value) {
                        setState(
                          () => LinkFavoriteHover = value,
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'FAVORITE',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: LinkFavoriteHover
                                ? AppColors.Slate50
                                : AppColors.Slate400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Wrap(
                  //   runSpacing: 4,
                  //   children: [
                  //     AnimatedContainer(
                  //       duration: Duration(milliseconds: 200),
                  //       height: 45,
                  //       width: double.infinity,
                  //       decoration: BoxDecoration(
                  //         color: LinkStarsHover
                  //             ? Rose800
                  //             : Slate50,
                  //         borderRadius: BorderRadius.all(
                  //           Radius.circular(15),
                  //         ),
                  //       ),
                  //       child: InkWell(
                  //         onTap: () {
                  //           if (LinkStarsClicked) {
                  //             LinkStarsClicked = false;
                  //           } else {
                  //             LinkStarsClicked = true;
                  //           }
                  //         },
                  //         onHover: (value) {
                  //           setState(
                  //             () => LinkStarsHover = value,
                  //           );
                  //         },
                  //         child: Container(
                  //           width: double.infinity,
                  //           height: double.infinity,
                  //           alignment: Alignment.centerLeft,
                  //           padding: EdgeInsets.symmetric(horizontal: 24),
                  //           child: Text(
                  //             'STARS',
                  //             style: TextStyle(
                  //               fontSize: 16,
                  //               fontWeight: FontWeight.w700,
                  //               color: LinkStarsHover
                  //                   ? Slate50
                  //                   : Slate400,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  // AnimatedContainer(
                  //   duration: Duration(milliseconds: 200),
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(15),
                  //     ),
                  //   ),
                  //   height: LinkStarsClicked ? 275 : 0,
                  //   child: ListView(
                  //     children: [
                  //       Container(
                  //         height: 50,
                  //         margin: EdgeInsets.only(
                  //           left: 8,
                  //           bottom: 4,
                  //           top: 8,
                  //           right: 8,
                  //         ),
                  //         decoration: BoxDecoration(
                  //           color: Colors.red,
                  //           borderRadius: BorderRadius.all(
                  //             Radius.circular(10),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
                  //],
                  //)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
