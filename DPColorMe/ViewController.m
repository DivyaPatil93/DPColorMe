//
//  ViewController.m
//  DPColorMe
//
//  Created by Student P_07 on 13/09/16.
//  Copyright © 2016 Divya Patil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    redVal=0;
    greenVal=0;
    blueVal=0;
    
    
    screenWidth = [[UIScreen mainScreen]bounds].size.width;
    screenHeight = [[UIScreen mainScreen]bounds].size.height;
    
    
    blueLabel=[[UILabel alloc]initWithFrame:CGRectMake(20, screenHeight-90, 60, 50)];
    blueLabel.backgroundColor =[UIColor blueColor];
    [self.view addSubview:blueLabel];
    
    
    
    greenLabel=[[UILabel alloc]initWithFrame:CGRectMake(20, screenHeight-180, 60, 50)];
    greenLabel.backgroundColor =[UIColor greenColor];
    [self.view addSubview:greenLabel];
    
    
    
    redLabel=[[UILabel alloc]initWithFrame:CGRectMake(20, screenHeight-270, 60, 50)];
    redLabel.backgroundColor =[UIColor redColor];
    [self.view addSubview:redLabel];
    
    blueSlider=[[UISlider alloc]initWithFrame:CGRectMake(120, screenHeight-90, 250, 50)];
    blueSlider.thumbTintColor=[UIColor grayColor];
    [blueSlider addTarget:self action:@selector(changeBlueColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:blueSlider];
    
    
    greenSlider=[[UISlider alloc]initWithFrame:CGRectMake(120, screenHeight-180, 250, 50)];
    greenSlider.thumbTintColor=[UIColor grayColor];
    [greenSlider addTarget:self action:@selector(changeGreenColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:greenSlider];
    
    
    redSlider=[[UISlider alloc]initWithFrame:CGRectMake(120, screenHeight-270, 250, 50)];
    redSlider.thumbTintColor=[UIColor grayColor];
    [redSlider addTarget:self action:@selector(changeRedColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:redSlider];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)changeRedColor:sender

{
    UISlider *localSlider=sender;
    float colorValue;
    colorValue=localSlider.value;
    redLabel.textColor=[UIColor blueColor];
    redLabel.text=[NSString stringWithFormat:@"%f",localSlider.value];
    redVal=colorValue;
    [self colorMe:redVal withGreen:greenVal withBlue:blueVal];
    
}
-(void)colorMe:  (float) redval withGreen : (float) greenval withBlue :(float) blueval
{
    self.view.backgroundColor=[UIColor colorWithRed:redVal green:greenVal blue:blueVal alpha:1];
}

-(void)changeGreenColor:sender

{
    UISlider *localSlider=sender;
    float colorValue;
    colorValue=localSlider.value;
    greenLabel.textColor=[UIColor redColor];
    greenLabel.text=[NSString stringWithFormat:@"%f",localSlider.value];
    greenVal=colorValue;
    [self colorMe:redVal withGreen:greenVal withBlue:blueVal];
    
    //    self.view.backgroundColor=[UIColor colorWithRed:0 green:colorValue blue:0 alpha:1];
    
    
}

-(void)changeBlueColor:sender

{
    UISlider *localSlider=sender;
    float colorValue;
    colorValue=localSlider.value;
    blueLabel.textColor=[UIColor redColor];
    blueLabel.text=[NSString stringWithFormat:@"%f",localSlider.value];
    blueVal=colorValue;
    [self colorMe:redVal withGreen:greenVal withBlue:blueVal];
    
    //    self.view.backgroundColor=[UIColor colorWithRed:0 green:0 blue:colorValue alpha:1];
    
    
}
@end
