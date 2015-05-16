//
//  ViewController.m
//  CardViewControllerDemo
//
//  Created by Karl Newell on 5/11/15.
//  Copyright (c) 2015 716 Labs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.obj1 = [[NSArray alloc] initWithObjects:@"Cell 1",@"Cell 2",@"Cell 3",nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

#pragma mark - CollectionView Delegates
- (UICollectionViewCell*)collectionView:(UICollectionView*)collectionView cellForItemAtIndexPath:(NSIndexPath*)indexPath
{
    UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:CELL_ID forIndexPath:indexPath];
    cell.backgroundColor = [UIColor blackColor];
    
    cell.layer.cornerRadius = 5;
    
    UIView* backgroundView = [[UIView alloc] init];
    backgroundView.frame = cell.bounds;
    
    UILabel* name = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, cell.bounds.size.width - 30, 50)];
    name.backgroundColor = [UIColor clearColor];
    name.textColor = [UIColor whiteColor];
    name.font = [UIFont fontWithName:@"Helvetica-Bold" size:18.0];
    name.text = [self.obj1 objectAtIndex:indexPath.row];
    name.lineBreakMode = NSLineBreakByWordWrapping;
    name.numberOfLines = 0;
    [backgroundView addSubview:name];
    
    cell.backgroundView = backgroundView;
    
    return cell;
}

- (NSInteger)collectionView:(UICollectionView*)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.obj1 count];
}

- (void)collectionView:(UICollectionView*)collectionView didSelectItemAtIndexPath:(NSIndexPath*)indexPath
{
    //Do Something
}

@end
