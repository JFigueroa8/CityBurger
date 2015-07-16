//
//  PlaceViewController.m
//  CityBurger
//
//  Created by Julmar on 5/17/14.
//  Copyright (c) 2014 Julmar Figueroa. All rights reserved.
//

#import "PlaceViewController.h"
#import "OrderViewController.h"

@interface PlaceViewController ()

@end

@implementation PlaceViewController{
    NSArray *tableData;
}


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
    self.toppings = @[@"Lettuce",
                      @"Pickles",
                      @"Tomatoes"];
    
    self.NoToppings = @[@"No Lettuce",
                      @"No Pickles",
                      @"No Tomatoes"];
    
    self.displayLabel1.text = self.stringFromTextField1;
    self.displayLabel2.text = self.stringFromTextField2;
    self.displayLabel3.text = self.stringFromTextField3;
    
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainCell"];
    }
    NSString *showToppings = [self.toppings objectAtIndex:indexPath.row];
    [cell.textLabel setText:showToppings];
    
    self.stringFromCell1 = self.NoToppings[0];
    self.stringFromCell2 = self.NoToppings[1];
    self.stringFromCell3 = self.NoToppings[2];
    
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    rowClicked = [indexPath row];
    
    NSIndexPath *selectedIndexPath = [tableView indexPathForSelectedRow];
    
    // Checked the selected row
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:selectedIndexPath];
    
    
    if (cell.accessoryType == UITableViewCellAccessoryNone)
    
    {
        
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        NSLog(@"%@", cell.textLabel.text);
        
        
    }
    else
        if (cell.accessoryType == UITableViewCellAccessoryCheckmark)
    
        {
            cell.accessoryType = UITableViewCellAccessoryNone;
            
        }
    
    if ([cell.textLabel.text isEqual: @"Lettuce"]) {
        self.stringFromCell1 = self.toppings[0];
    }
    if ([cell.textLabel.text isEqual: @"Pickles"]) {
        self.stringFromCell2 = self.toppings[1];
    }
    if ([cell.textLabel.text isEqual: @"Tomatoes"]) {
        self.stringFromCell3 = self.toppings[2];
    }
    
    
}

- (IBAction)SecondNextButton:(id)sender{
    OrderViewController *OVC = [self.storyboard instantiateViewControllerWithIdentifier:@"OrderViewController"];
    OVC.NewStringFromTextField1 = self.displayLabel1.text;
    OVC.NewStringFromTextField2 = self.displayLabel2.text;
    OVC.NewStringFromTextField3 = self.displayLabel3.text;
    OVC.NewStringFromTextField4 = self.stringFromCell1;
    OVC.NewStringFromTextField5 = self.stringFromCell2;
    OVC.NewStringFromTextField6 = self.stringFromCell3;
    
    
    [self presentViewController:OVC animated:YES completion:nil];
}







@end
