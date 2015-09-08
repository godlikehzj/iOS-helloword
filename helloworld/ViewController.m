//
//  ViewController.m
//  helloworld
//
//  Created by hzj on 15/9/8.
//  Copyright © 2015年 hzj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)click:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *input;
@property (weak, nonatomic) IBOutlet UILabel *display;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
        self.text = self.input.text;
    
        NSString *tempString = self.text;
        if ([tempString length] == 0)
        {
            tempString = @"input someting, stupid!";
        }
    
        NSString *inputString = [[NSString alloc] initWithFormat:@"input: %@",tempString];
        self.display.text = inputString;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.input) {
        [theTextField resignFirstResponder];
    }
    return YES;
}
@end
