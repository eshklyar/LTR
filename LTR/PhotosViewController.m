//
//  PhotosViewController.m
//  LTR
//
//  Created by Edik Shklyar on 6/28/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import "PhotosViewController.h"
#import "CustomCollectionViewCell.h"
#import "MenuViewController.h"

@interface PhotosViewController ()<UICollectionViewDataSource, UICollectionViewDelegate, MenuDelegate>
@property (strong, nonatomic) NSMutableArray *currentPhotosArray;

@end

@implementation PhotosViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //    self.currentPhotosArray = [[NSMutableArray alloc]init];
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
    BOOL tap = true;
    [self.delegate topRevealButtonTapped:tap];
    NSLog(@"delegate");
}

//-(void)topRevealButtonTapped{
//
//}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{

    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{

    return self.currentPhotosArray.count;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CustomCollectionViewCell"  forIndexPath:indexPath];
    UIImageView *photoImageView = [[UIImageView alloc]init];
    photoImageView.image=self.currentPhotosArray[indexPath.row];
//    [UIImage imageNamed:@"arrow2.png"];
    [cell addSubview:photoImageView];
//    [cell.photoImageView initWithImage:self.currentPhotosArray[indexPath.row]];

    cell.backgroundColor = [UIColor greenColor];
//     [cell.textLabel];
    return cell;
    
}
-(void)lionsButtonTapped{

    self.currentPhotosArray = [[NSMutableArray alloc] init];

    //build array of images, cycling through image names
//    int i;
    for(int i=1; i<4; i++){
        [self.currentPhotosArray addObject:[UIImage imageNamed:[NSString stringWithFormat:@"lion%d%d.png",2, i]]];
    }
    NSLog(@"number of images in the array %lu", (unsigned long)self.currentPhotosArray.count);
}
@end
