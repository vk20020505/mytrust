import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;
  const NavBar({super.key, required this.pageIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 16, right: 16),
      child: BottomAppBar(
        elevation: 0,
        child: Container(
          height: 50,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              navItem('assets/images/house.png', 
              'Home',
              pageIndex == 0,
              onTap: ()=> onTap(0)
              ),
               navItem('assets/images/wall-clock.png', 
               'History',
              pageIndex == 1,
              onTap: ()=> onTap(1),
              
              ),
              SizedBox(width: 65,),
               navItem('assets/images/discount.png', 
               'Offers',
              pageIndex == 2,
              onTap: ()=> onTap(2)
              ),
               navItem('assets/images/scanner.png', 
               'Profile',
              pageIndex == 3,
              onTap: ()=> onTap(3)
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget navItem(String image,String label, bool selected, {Function()? onTap} ){
    return Expanded(child: 
    InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image:AssetImage(image),
          height: 18,
          color: selected ? Colors.white:Colors.white.withOpacity(0.4),
          ),
          Padding(
            padding: const EdgeInsets.only(top:2.0),
            child: Text(label , style: TextStyle(color: selected? Colors.white:Colors.white.withOpacity(0.4),),),
          )
        ],
      ),

    ));
  }
}