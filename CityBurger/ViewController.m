//
//  ViewController.m
//  CityBurger
//
//  Created by Julmar on 5/13/14.
//  Copyright (c) 2014 Julmar Figueroa. All rights reserved.
//

#import "ViewController.h"
#import "PlaceViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.firstTextField.delegate = self;
    self.firstName.delegate = self;
    self.lastName.delegate = self;
    self.idNumber.delegate = self;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)backgroudTap:(id)sender{
    [self.firstName resignFirstResponder];
    [self.lastName resignFirstResponder];
    [self.idNumber resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    [self.firstName resignFirstResponder];
    [self.lastName resignFirstResponder];
    [self.idNumber resignFirstResponder];
    return NO;
}



- (IBAction)nextButton:(id)sender {
    PlaceViewController *PVC = [self.storyboard instantiateViewControllerWithIdentifier:@"PlaceViewController"];
    PVC.stringFromTextField1 = self.firstName.text;
    PVC.stringFromTextField2 = self.lastName.text;
    PVC.stringFromTextField3 = self.idNumber.text;
    
    [self presentViewController:PVC animated:YES completion:nil];
}
@end
