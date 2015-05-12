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
    }
    return self;
}

- (id)initWithCollectionViewLayout:(UICollectionViewFlowLayout*)layout
{
    if (self = [super initWithCollectionViewLayout:layout]) {
        [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:CELL_ID];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.topView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 300)];
    self.topView.backgroundColor = [UIColor whiteColor];
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
