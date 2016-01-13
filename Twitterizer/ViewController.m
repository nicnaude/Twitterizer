//
//  ViewController.m
//  Twitterizer
//
//  Created by Nicholas Naudé on 13/01/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *messageTextField;
@property NSString *returnMessage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)twitterize:(UIButton *)sender {
    NSString *message = self.messageTextField.text;
    NSCharacterSet *vowelSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    self.returnMessage = [message stringByTrimmingCharactersInSet:vowelSet];
    self.messageTextField.text = self.returnMessage;
    NSLog(@"%@", self.returnMessage);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
