//
//  ViewController.m
//  WordToVoice_Demo
//
//  Created by admin on 16/9/28.
//  Copyright © 2016年 AlezJi. All rights reserved.
//http://www.jianshu.com/p/e1456066ff40
//文字转语音

#import "ViewController.h"
#import "WordTranslateVoiceHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    WordTranslateVoiceHelper * example = [[WordTranslateVoiceHelper alloc] init];
    
    [example read:@"床前明月光,疑是地上霜,举头望明月,低头思故乡."];
    
}


@end
