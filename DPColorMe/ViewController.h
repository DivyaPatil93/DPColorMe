//
//  ViewController.h
//  DPColorMe
//
//  Created by Student P_07 on 13/09/16.
//  Copyright © 2016 Divya Patil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    CGFloat screenWidth;
    CGFloat screenHeight;
    UILabel * redLabel;
    UILabel *greenLabel;
    UILabel *blueLabel;
    UISlider *redSlider;
    UISlider *greenSlider;
    UISlider *blueSlider;
    float redVal,blueVal,greenVal;
}
-(void)colorMe:  (float) redval withGreen : (float) greenval withBlue :(float) blueval;


@end

