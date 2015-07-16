//
//  ViewController.h
//  CityBurger
//
//  Created by Julmar on 5/13/14.
//  Copyright (c) 2014 Julmar Figueroa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIActionSheetDelegate, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *firstName;
@property (strong, nonatomic) IBOutlet UITextField *lastName;
@property (strong, nonatomic) IBOutlet UITextField *idNumber;


-(IBAction)backgroudTap:(id)sender;
-(BOOL)textFieldShouldReturn:(UITextField *)textField;


@property (weak, nonatomic) IBOutlet UITextField *firstTextField;
- (IBAction)nextButton:(id)sender;

@end
