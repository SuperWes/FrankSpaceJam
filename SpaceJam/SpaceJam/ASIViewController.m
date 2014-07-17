//
//  ASIViewController.m
//  SpaceJam
//
//  Created by wes.ehrlichman on 7/17/14.
//  Copyright (c) 2014 Asynchrony. All rights reserved.
//

#import "ASIViewController.h"

@interface ASIViewController ()<UITextFieldDelegate>

@end

@implementation ASIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSString *result = @"";
    for (int i = 0; i<textField.text.length; i++)
    {
        NSRange range = {i, 1};
        result = [result stringByAppendingString:[textField.text substringWithRange:range]];
        result = [result stringByAppendingString:@" "];
    }
    textField.text = result;
}

@end
