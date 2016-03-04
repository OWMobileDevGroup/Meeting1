//
//  ViewController.m
//  MeetingFun
//
//  Created by Mr. Nobel on 3/3/16.
//  Copyright © 2016 Mr. Nobel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

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
- (IBAction)buttonClick:(id)sender {

    UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"This is an alert"
                                                                        message:[NSString stringWithFormat:@"%@", _textField.text]
                                                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK"
                                                 style:UIAlertActionStyleDefault
                                               handler:^(UIAlertAction *action){
                                                  [controller dismissViewControllerAnimated:YES
                                                                                 completion:nil];
                                               }];
    
    [controller addAction:ok];
    
    [self presentViewController:controller
                       animated:YES
                     completion:nil];
    
    _label.text = _textField.text;
}

@end
