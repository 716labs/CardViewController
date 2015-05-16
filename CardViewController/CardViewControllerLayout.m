//
//  CardViewControllerLayout.m
//  CardViewControllerDemo
//
//  Created by Karl Newell on 5/11/15.
//  Copyright (c) 2015 716 Labs. All rights reserved.
//

#import "CardViewControllerLayout.h"

@implementation CardViewControllerLayout

- (id)init
{
    if (!(self = [super init])) return nil;
    
    
    if (iPhone5) {
        [self setItemSize:CGSizeMake(150, 200)];
        self.sectionInset = UIEdgeInsetsMake(366, 2, 0, 2);
    }
    else if (iPhone6)
    {
        [self setItemSize:CGSizeMake(200, 250)];
        self.sectionInset = UIEdgeInsetsMake(416, 2, 2, 2);
    }
    else if (iPhone6Plus)
    {
        [self setItemSize:CGSizeMake(200, 250)];
        self.sectionInset = UIEdgeInsetsMake(486, 2, 2, 2);
    }
    
    [self setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    self.minimumInteritemSpacing = 10.0f;
    self.minimumLineSpacing = 2.0f;
    
    return self;
}

@end
