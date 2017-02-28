//
//  ViewController.m
//  kalk
//
//  Created by user on 27.02.17.
//  Copyright © 2017 iPodium. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *displayLabel;
@property (weak, nonatomic) IBOutlet UILabel *displayLabel1;


@end

@implementation ViewController

bool flagg;

- (IBAction)cifraBtn:(UIButton *)sender {
    NSString *btn = sender.currentTitle;
    NSString *disp = _displayLabel.text;
    if (flagg) {
        _displayLabel.text = [disp stringByAppendingString:btn];
    }
    else {
        _displayLabel.text = btn;
        flagg = true;
    }
}


- (IBAction)posch:(UIButton *)sender {
    int a = 0;
    for (int i = 0; i < 3; ++i) {
        NSString *ch = [NSString stringWithFormat: @"%c", [_displayLabel.text characterAtIndex:i]];
        int ppp = [ch intValue];
        a = a + ppp;
    }
    
    int b = 0;
    for (int i = 3; i < 6; ++i) {
        NSString *ch = [NSString stringWithFormat: @"%c", [_displayLabel.text characterAtIndex:i]];
        int ppp = [ch intValue];
        b = b + ppp;
    }
    if (a == b) {
        _displayLabel1.text = [NSString stringWithFormat:@"Билетик счастливый! Приятного аппетита =)"];
    }
    else {
        _displayLabel1.text = [NSString stringWithFormat:@"Спробуйте ще =("];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
