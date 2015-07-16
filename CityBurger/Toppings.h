//
//  Toppings.h
//  CityBurger
//
//  Created by Julmar on 5/17/14.
//  Copyright (c) 2014 Julmar Figueroa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Toppings : UITableView <UITableViewDelegate, UITableViewDataSource>{
    int rowClicked;
}
@property (strong, nonatomic) NSArray *toppings;
@property (strong, nonatomic) IBOutlet UITableView *tblToppings;

@property (strong, nonatomic) NSArray *data;


@end
