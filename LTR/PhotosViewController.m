//
//  PhotosViewController.m
//  LTR
//
//  Created by Edik Shklyar on 6/28/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import "PhotosViewController.h"

@interface PhotosViewController ()

@end

@implementation PhotosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)onMenuBarBtnItemTapped:(id)sender {
    [self.delegate topRevealButtonTapped];
//    NSLog(@"delegate");
}

//-(void)topRevealButtonTapped{
//
//}

@end
