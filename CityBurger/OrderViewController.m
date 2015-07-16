//
//  OrderViewController.m
//  CityBurger
//
//  Created by Julmar on 5/18/14.
//  Copyright (c) 2014 Julmar Figueroa. All rights reserved.
//

#import "OrderViewController.h"

@interface OrderViewController ()

@end

@implementation OrderViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.NewDisplayLabel1.text = self.NewStringFromTextField1;
    self.NewDisplayLabel2.text = self.NewStringFromTextField2;
    self.NewDisplayLabel3.text = self.NewStringFromTextField3;
    
    self.NewDisplayLabel4.text = self.NewStringFromTextField4;
    self.NewDisplayLabel5.text = self.NewStringFromTextField5;
    self.NewDisplayLabel6.text = self.NewStringFromTextField6;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)orderButtonPressed:(id)sender {
    
}






@end
