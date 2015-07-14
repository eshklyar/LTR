//
//  PhotosViewController.h
//  LTR
//
//  Created by Edik Shklyar on 6/28/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol PhotoDelegate <NSObject>

-(void)topRevealButtonTapped:(BOOL)tap;

@end

//@protocol ImageLoadDelegate
//
//-(void)loadImages;
//
//@end

@interface PhotosViewController : UIViewController

@property (weak, nonatomic) id<PhotoDelegate> delegate;

//@end

//@property id <ImageLoadDelegate> delegate;
- (IBAction)onMenuBarBtnItemTapped:(id)sender ;

@end