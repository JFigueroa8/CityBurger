//
//  Item.h
//  CityBurger
//
//  Created by Julmar on 5/18/14.
//  Copyright (c) 2014 Julmar Figueroa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject


@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
