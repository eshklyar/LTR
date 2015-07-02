//
//  ViewController.m
//  LTR
//
//  Created by Edik Shklyar on 6/28/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import "RootViewController.h"
#import "PhotosViewController.h"

@interface RootViewController () <PhotoDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftPhotoContrain;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightPhotoContrain;
@property PhotosViewController *photo;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.photo = [[PhotosViewController alloc]init];
    self.photo.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)topRevealButtonTapped{
//    self.leftPhotoContrain = self.rightPhotoContrain;
    NSLog(@"change in constrain");
}
@end
