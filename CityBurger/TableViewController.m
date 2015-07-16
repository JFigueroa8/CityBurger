//
//  TableViewController.m
//  CityBurger
//
//  Created by Julmar on 5/13/14.
//  Copyright (c) 2014 Julmar Figueroa. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"



@interface TableViewController ()

@end

@implementation TableViewController{
    NSArray *tableData;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.toppings = @[@"Lettuce",
                      @"Pickles",
                      @"Tomatoes"];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.toppings.count;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    rowClicked = [indexPath row];
    
    // Checked the selected row
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    if (rowClicked == indexPath.row) {
        
        
        cell.accessoryType = UITableViewCellAccessoryCheckmark;}
    else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    NSString *showToppings = [self.toppings objectAtIndex:indexPath.row];
    [cell.textLabel setText:showToppings];
    
    
    
    
    return cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

@end
