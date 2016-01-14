//
//  ViewController.m
//  Twitterizer
//
//  Created by Nicholas Naudé on 13/01/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *messageTextField;
@property NSString *returnMessage;
@property (weak, nonatomic) IBOutlet UILabel *wordCount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)twitterize:(UIButton *)sender {
    NSString *message = self.messageTextField.text;
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    self.returnMessage = [[message componentsSeparatedByCharactersInSet:vowels] componentsJoinedByString:@""];
    self.messageTextField.text = self.returnMessage;
    NSLog(@"%lu",self.returnMessage.length);
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    
    self.wordCount.text = [NSString stringWithFormat:@"Word count: %@", self.returnMessage];
}

@end
