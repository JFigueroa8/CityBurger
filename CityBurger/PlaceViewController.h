//
//  PlaceViewController.h
//  CityBurger
//
//  Created by Julmar on 5/17/14.
//  Copyright (c) 2014 Julmar Figueroa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlaceViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>{
    int rowClicked;
}


@property (weak, nonatomic) IBOutlet UILabel *displayLabel1;
@property (weak, nonatomic) IBOutlet UILabel *displayLabel2;
@property (weak, nonatomic) IBOutlet UILabel *displayLabel3;


@property (strong, nonatomic) NSString *stringFromTextField1;
@property (strong, nonatomic) NSString *stringFromTextField2;
@property (strong, nonatomic) NSString *stringFromTextField3;

@property (strong, nonatomic) NSString *stringFromCell1;
@property (strong, nonatomic) NSString *stringFromCell2;
@property (strong, nonatomic) NSString *stringFromCell3;



@property (strong, nonatomic) NSArray *toppings;
@property (strong, nonatomic) NSArray *NoToppings;

@property (strong, nonatomic) IBOutlet UITableView *tblToppings;
@property (strong, nonatomic) NSArray *data;

@property BOOL completed;

- (IBAction)SecondNextButton:(id)sender;

@property (retain) NSIndexPath *lastIndexPath;

@end
