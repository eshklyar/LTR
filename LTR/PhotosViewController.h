//
//  PhotosViewController.h
//  LTR
//
//  Created by Edik Shklyar on 6/28/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol PhotoDelegate

-(void)topRevealButtonTapped;

@end

@interface PhotosViewController : UIViewController

@property id<PhotoDelegate> delegate;

@end