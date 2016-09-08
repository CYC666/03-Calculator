//
//  CalculatorViewController.m
//  计算器
//
//  Created by mac on 16/7/6.
//  Copyright © 2016年 CYC. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController () {

    float _temp1;
    float _temp2;
    BOOL _isWork;

}

@end

@implementation CalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    [_show setEnabled:NO];
    
    
}

#pragma mark - ---------------------------
- (IBAction)zero:(UIButton *)sender {
    //当为0时，不输入0
    if ([_show.text integerValue] == 0) {
        return;
    } else if (_isWork == YES) {
        _show.text = @"0";
        _isWork = NO;
        return;
    }
    _show.text = [_show.text stringByAppendingString:@"0"];
    
}
- (IBAction)one:(UIButton *)sender {
    if ([_show.text integerValue] == 0 | _isWork == YES) {
        _show.text = @"1";
        _isWork = NO;
        return;
    }
    _show.text = [_show.text stringByAppendingString:@"1"];
}
- (IBAction)two:(UIButton *)sender {
    if ([_show.text integerValue] == 0 | _isWork == YES) {
        _show.text = @"2";
        _isWork = NO;
        return;
    }
    _show.text = [_show.text stringByAppendingString:@"2"];
}
- (IBAction)three:(UIButton *)sender {
    if ([_show.text integerValue] == 0 | _isWork == YES) {
        _show.text = @"3";
        _isWork = NO;
        return;
    }
    _show.text = [_show.text stringByAppendingString:@"3"];
}
- (IBAction)four:(UIButton *)sender {
    if ([_show.text integerValue] == 0 | _isWork == YES) {
        _show.text = @"4";
        _isWork = NO;
        return;
    }
    _show.text = [_show.text stringByAppendingString:@"4"];
}
- (IBAction)fine:(UIButton *)sender {
    if ([_show.text integerValue] == 0 | _isWork == YES) {
        _show.text = @"5";
        _isWork = NO;
        return;
    }
    _show.text = [_show.text stringByAppendingString:@"5"];
}
- (IBAction)six:(UIButton *)sender {
    if ([_show.text integerValue] == 0 | _isWork == YES) {
        _show.text = @"6";
        _isWork = NO;
        return;
    }
    _show.text = [_show.text stringByAppendingString:@"6"];
}
- (IBAction)seven:(UIButton *)sender {
    if ([_show.text integerValue] == 0 | _isWork == YES) {
        _show.text = @"7";
        _isWork = NO;
        return;
    }
    _show.text = [_show.text stringByAppendingString:@"7"];
}
- (IBAction)eight:(UIButton *)sender {
    if ([_show.text integerValue] == 0 | _isWork == YES) {
        _show.text = @"8";
        _isWork = NO;
        return;
    }
    _show.text = [_show.text stringByAppendingString:@"8"];
}
- (IBAction)nine:(UIButton *)sender {
    if ([_show.text integerValue] == 0 | _isWork == YES) {
        _show.text = @"9";
        _isWork = NO;
        return;
    }
    _show.text = [_show.text stringByAppendingString:@"9"];
}
- (IBAction)dian:(UIButton *)sender {
    if (_isWork == YES) {
        _show.text = @"0.";
        _isWork = NO;
        return;
    }
    _show.text = [_show.text stringByAppendingString:@"."];
}

#pragma mark - 规则
//需外滑
- (IBAction)add:(UIButton *)sender {
    _isWork = YES;
    _temp1 = [_show.text floatValue];
    [[NSUserDefaults standardUserDefaults] setObject:@"+" forKey:@"calculator"];
}
//需外滑
- (IBAction)sub:(UIButton *)sender {
    _isWork = YES;
    _temp1 = [_show.text floatValue];
    [[NSUserDefaults standardUserDefaults] setObject:@"-" forKey:@"calculator"];
}
- (IBAction)mul:(UIButton *)sender {
    _isWork = YES;
    _temp1 = [_show.text floatValue];
    [[NSUserDefaults standardUserDefaults] setObject:@"*" forKey:@"calculator"];
}
- (IBAction)div:(UIButton *)sender {
    _isWork = YES;
    _temp1 = [_show.text floatValue];
    [[NSUserDefaults standardUserDefaults] setObject:@"/" forKey:@"calculator"];
}

#pragma mark - 计算结果
- (IBAction)result:(UIButton *)sender {
    _isWork = YES;
    NSString *calculator = [[NSUserDefaults standardUserDefaults] objectForKey:@"calculator"];
    if ([calculator isEqualToString:@"+"]) {
        _show.text = [NSString stringWithFormat:@"%.2f", _temp1 + [_show.text floatValue]];
    } else if ([calculator isEqualToString:@"-"]) {
        _show.text = [NSString stringWithFormat:@"%.2f", _temp1 - [_show.text floatValue]];
    } else if ([calculator isEqualToString:@"*"]) {
        _show.text = [NSString stringWithFormat:@"%.2f", _temp1 * [_show.text floatValue]];
    } else if ([calculator isEqualToString:@"/"]) {
        _show.text = [NSString stringWithFormat:@"%.2f", _temp1 / [_show.text floatValue]];
    }
    
}










































@end
