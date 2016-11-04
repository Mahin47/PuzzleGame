//
//  GameVC.h
//  PuzzleGame
//
//  Created by Mahin Nur Islam on 6/5/16.
//  Copyright (c) 2016 Mahin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameVC : UIViewController


@property (strong, nonatomic) IBOutlet UIImageView *oneone;

@property (strong, nonatomic) IBOutlet UIImageView *onetwo;
@property (strong, nonatomic) IBOutlet UIImageView *onethree;

@property (strong, nonatomic) IBOutlet UIImageView *twoone;

@property (strong, nonatomic) IBOutlet UIImageView *twotwo;

@property (strong, nonatomic) IBOutlet UIImageView *twothree;

@property (strong, nonatomic) IBOutlet UIImageView *threeone;

@property (strong, nonatomic) IBOutlet UIImageView *threetwo;

@property (strong, nonatomic) IBOutlet UIImageView *threethree;

@property (strong, nonatomic) UIImage *one1;
@property (strong, nonatomic) UIImage *one2;
@property (strong, nonatomic) UIImage *one3;

@property (strong, nonatomic) UIImage *two1;
@property (strong, nonatomic) UIImage *two2;
@property (strong, nonatomic) UIImage *two3;

@property (strong, nonatomic) UIImage *three1;
@property (strong, nonatomic) UIImage *three2;
@property (strong, nonatomic) UIImage *three3;



@property (strong, nonatomic) UIImage *first;
@property (strong, nonatomic) UIImage *second;
@end
