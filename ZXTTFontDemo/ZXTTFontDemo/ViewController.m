//
//  ViewController.m
//  ZXTTFontDemo
//
//  Created by Rocent on 2017/7/26.
//  Copyright © 2017年 stronger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *fontLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //字体s
    for(NSString *fontfamilyname in [UIFont familyNames])
    {
        NSLog(@"family:'%@'",fontfamilyname);
        for(NSString *fontName in [UIFont fontNamesForFamilyName:fontfamilyname])
        {
            NSLog(@"\tfont:'%@'",fontName);
        }
        NSLog(@"-------------");
    }
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)setFontLabel:(UILabel *)fontLabel{
    fontLabel.font = [UIFont fontWithName:@"woziku-bsdsm-CN4262" size:26];
    fontLabel.text = @"测试字体";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
