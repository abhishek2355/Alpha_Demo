import 'package:flutter/material.dart';
import 'package:alpha_devayani/constants/app_heights.dart' as app_heights;
import 'package:alpha_devayani/constants/app_strings.dart' as app_strings;
import 'package:alpha_devayani/constants/app_widths.dart' as app_widths;
import 'icon_and_name.dart';

class SinglePostImage extends StatelessWidget {
  const SinglePostImage({super.key});

  @override
  Widget build(BuildContext context) {

    var deviceMedia = MediaQuery.of(context);
    final double screenHeight = deviceMedia.size.height - deviceMedia.padding.top - deviceMedia.padding.bottom;
    final double screenWidth = deviceMedia.size.width - deviceMedia.padding.left - deviceMedia.padding.right;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * app_widths.width16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_rounded, size: screenHeight * app_heights.height30),
                    Icon(
                      Icons.more_horiz_outlined,
                      size: screenHeight * app_heights.height30,
                    ),
                  ],
                ),
              ),
        
              SizedBox(height: screenHeight * app_heights.height16,),
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * app_widths.width16),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: screenHeight * app_heights.height60,
                    ),
              
                    SizedBox(width: screenWidth * app_widths.width10,),
              
                    Text(
                      app_strings.username,
                      style: TextStyle(fontSize: screenHeight * app_heights.height18),
                    ),
                  ],
                ),
              ),
        
              SizedBox(
                height: screenHeight * app_heights.height20,
              ),
            
              Container(
                height: screenHeight * app_heights.height315,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(image: AssetImage("assets/images/a3382bf59efc720e1fea28c9888f9d75.jpg"), fit: BoxFit.fill)
                ),
              ),
        
              SizedBox(
                height: screenHeight * app_heights.height20,
              ),
        
            
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconPlusText(iconName: Icons.heart_broken, name: app_strings.like,),
                  IconPlusText(iconName: Icons.comment, name: app_strings.comment),
                  IconPlusText(iconName: Icons.repeat_on_sharp, name: app_strings.repost),
                  IconPlusText(iconName: Icons.send, name: app_strings.send),
                ],
              ),
        
              SizedBox(
                height: screenHeight * app_heights.height20,
              ),
        
              Padding(
                padding: EdgeInsets.symmetric( horizontal: screenWidth * app_widths.width10, vertical: screenHeight * app_heights.height10),
                child: Text(
                  app_strings.reaction,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenHeight * app_heights.height24
                  ),
                ),
              ),
        
              SizedBox(
                height: screenHeight * app_heights.height10,
              ),
        
              Padding(
                padding: EdgeInsets.only(left: screenWidth * app_widths.width16),
                child: SizedBox(
                  height: screenHeight * app_heights.height60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: screenWidth * app_widths.width16),
                        child: Icon(
                          Icons.account_circle,
                          size: screenHeight * app_heights.height60,
                        ),
                      );
                    },
                  ),
                ),
              ),
              
              SizedBox(
                height: screenHeight * app_heights.height10,
              ),
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * app_widths.width10, vertical: screenHeight * app_heights.height10),
                child: Text(
                  app_strings.comments,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenHeight * app_heights.height24
                  ),
                ),
              ),
        
              SizedBox(
                height: screenHeight * app_heights.height10,
              ),
        
              SizedBox(
                height: screenHeight * app_heights.height675,
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    if(index % 2 == 0){
                      return Padding(
                        padding: EdgeInsets.only(bottom: screenHeight * app_heights.height15),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: screenWidth * app_widths.width16,),
                              child: Icon(Icons.circle, size: screenHeight * app_heights.height75),
                            ),
                              
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: screenWidth * app_widths.width16),
                                child: Container(
                                  height: screenHeight * app_heights.height130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(screenHeight * app_heights.height20),
                                    color: Colors.grey.shade200,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: screenWidth * app_widths.width10, vertical: screenHeight * app_heights.height10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              app_strings.user1,
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: screenHeight * app_heights.height24),
                                            ),
                                  
                                            Icon(
                                              Icons.more_horiz_outlined,
                                              size: screenHeight * app_heights.height35,
                                            ),
                                          ],
                                        ),
                                  
                                        Text(
                                          DateTime.now().toString(),
                                          style: TextStyle(fontSize: screenHeight * app_heights.height20),
                                        ),
                                        Text(
                                          app_strings.heyNicePicture,
                                          style: TextStyle(fontSize: screenHeight * app_heights.height24, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  )),
                            
                              ),
                            ),
                          ],
                        ),
                      );    
                    }
                    else{
                      return Padding(
                        padding: EdgeInsets.only(bottom: screenHeight * app_heights.height15),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: screenWidth * app_widths.width60,),
                              child: Icon(Icons.circle, size: screenHeight * app_heights.height60),
                            ),
                              
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: screenWidth * app_widths.width16),
                                child: Container(
                                  height: screenHeight * app_heights.height130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(screenHeight * app_heights.height20),
                                    color: Colors.grey.shade200,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: screenWidth * app_widths.width10, vertical: screenHeight * app_heights.height10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              app_strings.user2,
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: screenHeight * app_heights.height24),
                                            ),
                                  
                                            Icon(
                                              Icons.more_horiz_outlined,
                                              size: screenHeight * app_heights.height35,
                                            ),
                                          ],
                                        ),
                                  
                                        Text(
                                          DateTime.now().toString(),
                                          style: TextStyle(fontSize: screenHeight * app_heights.height20),
                                        ),
                                        Text(
                                          app_strings.heyNicePicture,
                                          style: TextStyle(fontSize: screenHeight * app_heights.height24, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  )),
                            
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    
                  },
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
