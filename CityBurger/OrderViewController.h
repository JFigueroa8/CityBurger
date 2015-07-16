//
//  OrderViewController.h
//  CityBurger
//
//  Created by Julmar on 5/18/14.
//  Copyright (c) 2014 Julmar Figueroa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *NewDisplayLabel1;
@property (weak, nonatomic) IBOutlet UILabel *NewDisplayLabel2;
@property (weak, nonatomic) IBOutlet UILabel *NewDisplayLabel3;
@property (weak, nonatomic) IBOutlet UILabel *NewDisplayLabel4;
@property (weak, nonatomic) IBOutlet UILabel *NewDisplayLabel5;
@property (weak, nonatomic) IBOutlet UILabel *NewDisplayLabel6;

@property (strong, nonatomic) NSString *NewStringFromTextField1;
@property (strong, nonatomic) NSString *NewStringFromTextField2;
@property (strong, nonatomic) NSString *NewStringFromTextField3;
@property (strong, nonatomic) NSString *NewStringFromTextField4;
@property (strong, nonatomic) NSString *NewStringFromTextField5;
@property (strong, nonatomic) NSString *NewStringFromTextField6;


-(IBAction)orderButtonPressed:(id)sender;
@end
