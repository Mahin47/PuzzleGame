//
//  GameVC.m
//  PuzzleGame
//
//  Created by Mahin Nur Islam on 6/5/16.
//  Copyright (c) 2016 Mahin. All rights reserved.
//

#import "GameVC.h"

@interface GameVC ()
{

   int a[4][4];

}

@end

@implementation GameVC
@synthesize one1,one2,one3,two1,two2,two3,three1,three2,three3;
@synthesize oneone,onethree,onetwo,twoone,twothree,twotwo,threeone,threethree,threetwo;
@synthesize first,second;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   
    
    a[1][1] = 1; a[1][2] = 0; a[1][3] = 1;
    a[2][1] = 1; a[2][2] = 1; a[2][3] = 1;
    a[3][1] = 1; a[3][2] = 1; a[3][3] = 1;
    
    
    oneone.image = [UIImage imageNamed:@"23.jpg"];
    onetwo.image = [UIImage imageNamed:@"blank.png"];
    onethree.image = [UIImage imageNamed:@"12.jpg"];
    
    twoone.image = [UIImage imageNamed:@"31.jpg"];
    twotwo.image = [UIImage imageNamed:@"32.jpg"];
    twothree.image = [UIImage imageNamed:@"22.jpg"];
    
    threeone.image = [UIImage imageNamed:@"11.jpg"];
    threetwo.image = [UIImage imageNamed:@"21.jpg"];
    threethree.image = [UIImage imageNamed:@"13.jpg"];
   

    
    
    //--------one----------//
    
//    UISwipeGestureRecognizer *rightSwipeForOne = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeOne:)];
//    rightSwipeForOne.direction = UISwipeGestureRecognizerDirectionRight;
//    [oneone addGestureRecognizer:rightSwipeForOne];
    
    UISwipeGestureRecognizer *downSwipeForOne = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeOne:)];
    downSwipeForOne.direction = UISwipeGestureRecognizerDirectionDown;
    [oneone addGestureRecognizer:downSwipeForOne];
    
    UISwipeGestureRecognizer *rightSwipeForOne = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeOne:)];
    rightSwipeForOne.direction = UISwipeGestureRecognizerDirectionRight;
    [oneone addGestureRecognizer:rightSwipeForOne];
    
    
    
    //---------two---------//
    
    UISwipeGestureRecognizer *rightSwipeForTwo = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeTwo:)];
    [onetwo addGestureRecognizer:rightSwipeForTwo];
    rightSwipeForTwo.direction = UISwipeGestureRecognizerDirectionRight;
    
    UISwipeGestureRecognizer *leftSwipeForTwo = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeTwo:)];
    [onetwo addGestureRecognizer:leftSwipeForTwo];
    leftSwipeForTwo.direction = UISwipeGestureRecognizerDirectionLeft;

    
    UISwipeGestureRecognizer *downSwipeForTwo = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeTwo:)];
    [onetwo addGestureRecognizer:downSwipeForTwo];
    downSwipeForTwo.direction = UISwipeGestureRecognizerDirectionDown;
    
    //-------three--------//
    
    UISwipeGestureRecognizer *downSwipeForThree = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeThree:)];
    downSwipeForThree.direction = UISwipeGestureRecognizerDirectionDown;
    [onethree addGestureRecognizer:downSwipeForThree];
    
    UISwipeGestureRecognizer *leftSwipeForThree = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeThree:)];
    leftSwipeForThree.direction = UISwipeGestureRecognizerDirectionLeft;
    [onethree addGestureRecognizer:leftSwipeForThree];
    
    //-------four-----------//
    
    UISwipeGestureRecognizer *downSwipeForFour = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeFour:)];
    downSwipeForFour.direction = UISwipeGestureRecognizerDirectionDown;
    [twoone addGestureRecognizer:downSwipeForFour];
    
    UISwipeGestureRecognizer *upSwipeForFour = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeFour:)];
    upSwipeForFour.direction = UISwipeGestureRecognizerDirectionUp;
    [twoone addGestureRecognizer:upSwipeForFour];
    
    UISwipeGestureRecognizer *rightSwipeForFour = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeFour:)];
    rightSwipeForFour.direction = UISwipeGestureRecognizerDirectionRight;
    [twoone addGestureRecognizer:rightSwipeForFour];

     //--------five------------//
    
    UISwipeGestureRecognizer *downSwipeForFive = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeFive:)];
    downSwipeForFive.direction = UISwipeGestureRecognizerDirectionDown;
    [twotwo addGestureRecognizer:downSwipeForFive];
    
    UISwipeGestureRecognizer *upSwipeForFive = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeFive:)];
    upSwipeForFive.direction = UISwipeGestureRecognizerDirectionUp;
    [twotwo addGestureRecognizer:upSwipeForFive];
    
    UISwipeGestureRecognizer *leftSwipeForFive = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeFive:)];
    leftSwipeForFive.direction = UISwipeGestureRecognizerDirectionLeft;
    [twotwo addGestureRecognizer:leftSwipeForFive];
    
    UISwipeGestureRecognizer *rightSwipeForFive = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeFive:)];
    rightSwipeForFive.direction = UISwipeGestureRecognizerDirectionRight;
    [twotwo addGestureRecognizer:rightSwipeForFive];
    
    
    //-------six-----------//
    
    UISwipeGestureRecognizer *downSwipeForSix = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeSix:)];
    downSwipeForSix.direction = UISwipeGestureRecognizerDirectionDown;
    [twothree addGestureRecognizer:downSwipeForSix];
    
    UISwipeGestureRecognizer *upSwipeForSix = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeSix:)];
    upSwipeForSix.direction = UISwipeGestureRecognizerDirectionUp;
    [twothree addGestureRecognizer:upSwipeForSix];
    
    UISwipeGestureRecognizer *leftSwipeForSix = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeSix:)];
    leftSwipeForSix.direction = UISwipeGestureRecognizerDirectionLeft;
    [twothree addGestureRecognizer:leftSwipeForSix];
    
    
    //--------seven-----------//
    
    UISwipeGestureRecognizer *rightSwipeForSeven = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeSeven:)];
    rightSwipeForSeven.direction = UISwipeGestureRecognizerDirectionRight;
    [threeone addGestureRecognizer:rightSwipeForSeven];
    
    UISwipeGestureRecognizer *upSwipeForSeven = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeSeven:)];
    upSwipeForSeven.direction = UISwipeGestureRecognizerDirectionUp;
    [threeone addGestureRecognizer:upSwipeForSeven];
    
    
    //-----eight------------//
    
    UISwipeGestureRecognizer *upSwipeForEight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeEight:)];
    upSwipeForEight.direction = UISwipeGestureRecognizerDirectionUp;
    [threetwo addGestureRecognizer:upSwipeForEight];
    
    UISwipeGestureRecognizer *leftSwipeForEight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeEight:)];
    leftSwipeForEight.direction = UISwipeGestureRecognizerDirectionLeft;
    [threetwo addGestureRecognizer:leftSwipeForEight];
    
    UISwipeGestureRecognizer *rightSwipeForEight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeEight:)];
    rightSwipeForEight.direction = UISwipeGestureRecognizerDirectionRight;
    [threetwo addGestureRecognizer:rightSwipeForEight];
    
    //--------nine-----------//
    
    UISwipeGestureRecognizer *leftSwipeForNine = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeNine:)];
    leftSwipeForNine.direction = UISwipeGestureRecognizerDirectionLeft;
    [threethree addGestureRecognizer:leftSwipeForNine];

    UISwipeGestureRecognizer *upSwipeForNine = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipeNine:)];
    upSwipeForNine.direction = UISwipeGestureRecognizerDirectionUp;
    [threethree addGestureRecognizer:upSwipeForNine];

  }

-(void)didSwipeOne: (UISwipeGestureRecognizer *)sender{
    
    UISwipeGestureRecognizerDirection direction = sender.direction;
    
    switch (direction) {
        case UISwipeGestureRecognizerDirectionRight:
        {
            if (a[1][2]==0) {
                first = onetwo.image;
                onetwo.image = oneone.image;
                oneone.image = first;
                
                a[1][1] = 0;
                a[1][2] = 1;
            }
            NSLog(@"one right");
        
        }
            break;
            
        case UISwipeGestureRecognizerDirectionDown:
        {
            if (a[2][1]==0) {
                first = twoone.image;
                twoone.image = oneone.image;
                oneone.image = first;
                
                a[1][1] = 0;
                a[2][1] = 1;
            }
            
             NSLog(@"one down");
            
        }
            break;
            
            
        default:
            break;
    }
    
}

-(void)didSwipeTwo: (UISwipeGestureRecognizer *)sender{
    
    UISwipeGestureRecognizerDirection direction = sender.direction;
    
    switch (direction) {
        case UISwipeGestureRecognizerDirectionRight:
        {
            if (a[1][3]==0) {
                first = onethree.image;
                onethree.image = onetwo.image;
                onetwo.image = first;
                
                a[1][2] = 0;
                a[1][3] = 1;
            }
             NSLog(@"two right");
        }
            break;
            
        case UISwipeGestureRecognizerDirectionLeft:
        {
            if (a[1][1]==0) {
                first = oneone.image;
                oneone.image = onetwo.image;
                onetwo.image = first;
                
                a[1][2] = 0;
                a[1][1] = 1;
            }
             NSLog(@"two left");
            
        }
            break;
            
        case UISwipeGestureRecognizerDirectionDown:
        {
            if (a[2][2]==0) {
                first = twotwo.image;
                twotwo.image = onetwo.image;
                onetwo.image = first;
                
                a[1][2] = 0;
                a[2][2] = 1;
            }
             NSLog(@"two down");
        }
            break;
            
            
        default:
            break;
    }
    
}


-(void)didSwipeThree: (UISwipeGestureRecognizer *)sender{
    
    UISwipeGestureRecognizerDirection direction = sender.direction;
    
    switch (direction) {
        case UISwipeGestureRecognizerDirectionLeft:
        {
            if (a[1][2]==0) {
                first = onetwo.image;
                onetwo.image = onethree.image;
                onethree.image = first;
                
                a[1][3] = 0;
                a[1][2] = 1;
            }
            
             NSLog(@"three left");
            
        }
            break;
            
        case UISwipeGestureRecognizerDirectionDown:
        {
            if (a[2][3]==0) {
                first = twothree.image;
                twothree.image = onethree.image;
                onethree.image = first;
                
                a[1][3] = 0;
                a[2][3] = 1;
            }
             NSLog(@"three down");
        }
            break;
            
            
        default:
            break;
    }
    
}

-(void)didSwipeFour: (UISwipeGestureRecognizer *)sender{
    
    UISwipeGestureRecognizerDirection direction = sender.direction;
    
    switch (direction) {
        case UISwipeGestureRecognizerDirectionRight:
        {
            if (a[2][2]==0) {
                first = twotwo.image;
                twotwo.image = twoone.image;
                twoone.image = first;
                
                a[2][1] = 0;
                a[2][2] = 1;
            }
            NSLog(@"four right");
        }
            break;
            
        case UISwipeGestureRecognizerDirectionUp:
        {
            if (a[1][1]==0) {
                first = oneone.image;
                oneone.image = twoone.image;
                twoone.image = first;
                
                a[2][1] = 0;
                a[1][1] = 1;
            }
            NSLog(@"four up");
            
        }
            break;
            
        case UISwipeGestureRecognizerDirectionDown:
        {
            if (a[3][1]==0) {
                first = threeone.image;
                threeone.image = twoone.image;
                twoone.image = first;
                
                a[2][1] = 0;
                a[3][1] = 1;
            }
            NSLog(@"four down");
        }
            break;
            
            
        default:
            break;
    }
    
}

-(void)didSwipeFive: (UISwipeGestureRecognizer *)sender{
    
    UISwipeGestureRecognizerDirection direction = sender.direction;
    
    switch (direction) {
        case UISwipeGestureRecognizerDirectionLeft:
        {
            if (a[2][1]==0) {
                first = twoone.image;
                twoone.image = twotwo.image;
                twotwo.image = first;
                
                a[2][2] = 0;
                a[2][1] = 1;
            }
            
            NSLog(@"five left");
            
        }
            break;
            
        case UISwipeGestureRecognizerDirectionRight:
        {
            if (a[2][3]==0) {
                first = twothree.image;
                twothree.image = twotwo.image;
                twotwo.image = first;
                
                a[2][2] = 0;
                a[2][3] = 1;
            }
            
            NSLog(@"five right");
            
        }
            break;
            
        case UISwipeGestureRecognizerDirectionUp:
        {
            if (a[1][2]==0) {
                first = onetwo.image;
                onetwo.image = twotwo.image;
                twotwo.image = first;
                
                a[2][2] = 0;
                a[1][2] = 1;
            }
            
            NSLog(@"five up");
            
        }
            break;
            
            
        case UISwipeGestureRecognizerDirectionDown:
        {
            if (a[3][2]==0) {
                first = threetwo.image;
                threetwo.image = twotwo.image;
                twotwo.image = first;
                
                a[2][2] = 0;
                a[3][2] = 1;
            }
            NSLog(@"five down");
        }
            break;
            
            
        default:
            break;
    }
    
}


-(void)didSwipeSix: (UISwipeGestureRecognizer *)sender{
    
    UISwipeGestureRecognizerDirection direction = sender.direction;
    
    switch (direction) {
        case UISwipeGestureRecognizerDirectionLeft:
        {
            if (a[2][2]==0) {
                first = twotwo.image;
                twotwo.image = twothree.image;
                twothree.image = first;
                
                a[2][3] = 0;
                a[2][2] = 1;
            }
            
            NSLog(@"six left");
            
        }
            break;
            
       
            
        case UISwipeGestureRecognizerDirectionUp:
        {
            if (a[1][3]==0) {
                first = onethree.image;
                onethree.image = twothree.image;
                twothree.image = first;
                
                a[2][3] = 0;
                a[1][3] = 1;
            }
            
            NSLog(@"six up");
            
        }
            break;
            
            
        case UISwipeGestureRecognizerDirectionDown:
        {
            if (a[3][3]==0) {
                first = threethree.image;
                threethree.image = twothree.image;
                twothree.image = first;
                
                a[2][3] = 0;
                a[3][3] = 1;
            }
            NSLog(@"six down");
        }
            break;
            
            
        default:
            break;
    }
    
}


-(void)didSwipeSeven: (UISwipeGestureRecognizer *)sender{
    
    UISwipeGestureRecognizerDirection direction = sender.direction;
    
    switch (direction) {
        case UISwipeGestureRecognizerDirectionRight:
        {
            if (a[3][2]==0) {
                first = threetwo.image;
                threetwo.image = threeone.image;
                threeone.image = first;
                
                a[3][1] = 0;
                a[3][2] = 1;
            }
            NSLog(@"seven right");
        }
            break;
            
        case UISwipeGestureRecognizerDirectionUp:
        {
            if (a[2][1]==0) {
                first = twoone.image;
                twoone.image = threeone.image;
                threeone.image = first;
                
                a[3][1] = 0;
                a[2][1] = 1;
            }
            NSLog(@"seven up");
            
        }
            break;
            
            
        default:
            break;
    }
    
}

-(void)didSwipeEight: (UISwipeGestureRecognizer *)sender{
    
    UISwipeGestureRecognizerDirection direction = sender.direction;
    
    switch (direction) {
            
        case UISwipeGestureRecognizerDirectionLeft:
        {
            if (a[3][1]==0) {
                first = threeone.image;
                threeone.image = threetwo.image;
                threetwo.image = first;
                
                a[3][2] = 0;
                a[3][1] = 1;
            }
            NSLog(@"eight left");
        }
            break;
            
            
        case UISwipeGestureRecognizerDirectionRight:
        {
            if (a[3][3]==0) {
                first = threethree.image;
                threethree.image = threetwo.image;
                threetwo.image = first;
                
                a[3][2] = 0;
                a[3][3] = 1;
            }
            NSLog(@"eight right");
        }
            break;
            
        case UISwipeGestureRecognizerDirectionUp:
        {
            if (a[2][2]==0) {
                first = twotwo.image;
                twotwo.image = threetwo.image;
                threetwo.image = first;
                
                a[3][2] = 0;
                a[2][2] = 1;
            }
            NSLog(@"eight up");
            
        }
            break;
            
            
        default:
            break;
    }
    
}

-(void)didSwipeNine: (UISwipeGestureRecognizer *)sender{
    
    UISwipeGestureRecognizerDirection direction = sender.direction;
    
    switch (direction) {
        case UISwipeGestureRecognizerDirectionLeft:
        {
            if (a[3][2]==0) {
                first = threetwo.image;
                threetwo.image = threethree.image;
                threethree.image = first;
                
                a[3][3] = 0;
                a[3][2] = 1;
            }
            NSLog(@"nine left");
            
        }
            break;
            
        case UISwipeGestureRecognizerDirectionUp:
        {
            if (a[2][3]==0) {
                first = twothree.image;
                twothree.image = threethree.image;
                threethree.image = first;
                
                a[3][3] = 0;
                a[2][3] = 1;
            }
            
            NSLog(@"nine up");
            
        }
            break;
            
            
        default:
            break;
    }
    
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
