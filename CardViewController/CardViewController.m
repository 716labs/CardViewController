//
//  CardViewController.m
//  CardViewControllerDemo
//
//  Created by Karl Newell on 5/11/15.
//  Copyright (c) 2015 716 Labs. All rights reserved.
//

#import "CardViewController.h"
#import "CardViewControllerLayout.h"

@interface CardViewController ()

@end

@implementation CardViewController


-(id)init
{
    if (self = [super initWithCollectionViewLayout:[[CardViewControllerLayout alloc] init]]) {
        [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:CELL_ID];
        [self.collectionView setBackgroundColor:[UIColor clearColor]];
    }
    return self;
}

- (id)initWithCollectionViewLayout:(UICollectionViewFlowLayout*)layout
{
    if (self = [super initWithCollectionViewLayout:layout]) {
        [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:CELL_ID];
        [self.collectionView setBackgroundColor:[UIColor clearColor]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Do any additional setup after loading the view.
    CGRect frame = CGRectMake(0, 0, self.view.bounds.size.width, 300);
    if (iPhone5) {
        frame = CGRectMake(0, 0, self.view.bounds.size.width, 356);
    } else if (iPhone6) {
        frame = CGRectMake(0, 0, self.view.bounds.size.width, 406);
    } else if (iPhone6Plus) {
        frame = CGRectMake(0, 0, self.view.bounds.size.width, 476);
    }
    
    self.topView = [[UIView alloc] initWithFrame:frame];
    self.topView.backgroundColor = [UIColor redColor];
    [self.view insertSubview:self.topView aboveSubview:self.collectionView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
