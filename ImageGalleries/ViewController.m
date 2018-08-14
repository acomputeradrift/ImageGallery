//
//  ViewController.m
//  ImageGalleries
//
//  Created by Jamie on 2018-08-13.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *uiScrollView;
@property (nonatomic, strong) UIImageView *firstImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //create 3 image views
    self.firstImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    UIImageView *secondImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    UIImageView *thirdImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    
    // set auto resizing to no
    [self.firstImageView setUserInteractionEnabled:YES];
    [secondImageView setUserInteractionEnabled:YES];
    [thirdImageView setUserInteractionEnabled:YES];
    
    [self.firstImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [secondImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [thirdImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    // add images as subviews to scroll view
    [self.uiScrollView addSubview:self.firstImageView];
    [self.uiScrollView addSubview:secondImageView];
    [self.uiScrollView addSubview:thirdImageView];
    
    
    //create 3 images
    UIImage *image1 = [UIImage imageNamed: @"Lighthouse-in-Field"];
    UIImage *image2 = [UIImage imageNamed: @"Lighthouse-night"];
    UIImage *image3 = [UIImage imageNamed: @"Lighthouse-zoomed"];
 
    //set the images to the image views
    self.firstImageView.image = image1;
    secondImageView.image = image2;
    thirdImageView.image = image3;
    
    
    self.uiScrollView.pagingEnabled = YES;
   

   
    
    
    //-------------------box1
    NSLayoutConstraint *firstImageViewWidthConstraints = [NSLayoutConstraint constraintWithItem:self.firstImageView
                                                                                        attribute:NSLayoutAttributeWidth
                                                                                        relatedBy:NSLayoutRelationEqual
                                                                                           toItem:self.view
                                                                                        attribute:NSLayoutAttributeWidth
                                                                                       multiplier:1
                                                                                         constant:0.0];
    firstImageViewWidthConstraints.active = YES;
    NSLayoutConstraint *firstImageViewHeightConstraints = [NSLayoutConstraint constraintWithItem:self.firstImageView
                                                                                      attribute:NSLayoutAttributeHeight
                                                                                      relatedBy:NSLayoutRelationEqual
                                                                                         toItem:self.view
                                                                                      attribute:NSLayoutAttributeHeight
                                                                                     multiplier:1
                                                                                       constant:0.0];
    firstImageViewHeightConstraints.active = YES;
    //----start if scroll view
    NSLayoutConstraint *firstImageViewXConstraints = [NSLayoutConstraint constraintWithItem:self.firstImageView
                                                                                      attribute:NSLayoutAttributeLeading
                                                                                      relatedBy:NSLayoutRelationEqual
                                                                                         toItem:self.uiScrollView
                                                                                      attribute:NSLayoutAttributeLeading
                                                                                     multiplier:1
                                                                                       constant:0.0];
    firstImageViewXConstraints.active = YES;
    NSLayoutConstraint *firstImageViewYConstraints = [NSLayoutConstraint constraintWithItem:self.firstImageView
                                                                                       attribute:NSLayoutAttributeTop
                                                                                       relatedBy:NSLayoutRelationEqual
                                                                                          toItem:self.uiScrollView
                                                                                       attribute:NSLayoutAttributeTop
                                                                                      multiplier:1
                                                                                        constant:0.0];
      firstImageViewYConstraints.active = YES;
    
    NSLayoutConstraint *firstImageViewBottomConstraints = [NSLayoutConstraint constraintWithItem:self.firstImageView
                                                                                  attribute:NSLayoutAttributeBottom
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:self.uiScrollView
                                                                                  attribute:NSLayoutAttributeBottom
                                                                                 multiplier:1
                                                                                   constant:0.0];
    
  
    
    
    
    firstImageViewBottomConstraints.active = YES;
      //-------------------box2
    NSLayoutConstraint *secondImageViewWidthConstraints = [NSLayoutConstraint constraintWithItem:secondImageView
                                                                                      attribute:NSLayoutAttributeWidth
                                                                                      relatedBy:NSLayoutRelationEqual
                                                                                         toItem:self.view
                                                                                      attribute:NSLayoutAttributeWidth
                                                                                     multiplier:1
                                                                                       constant:0.0];
    secondImageViewWidthConstraints.active = YES;
    NSLayoutConstraint *secondImageViewHeightConstraints = [NSLayoutConstraint constraintWithItem:secondImageView
                                                                                       attribute:NSLayoutAttributeHeight
                                                                                       relatedBy:NSLayoutRelationEqual
                                                                                          toItem:self.view
                                                                                       attribute:NSLayoutAttributeHeight
                                                                                      multiplier:1
                                                                                        constant:0.0];
    secondImageViewHeightConstraints.active = YES;
    NSLayoutConstraint *secondImageViewXConstraints = [NSLayoutConstraint constraintWithItem:secondImageView
                                                                                  attribute:NSLayoutAttributeLeading
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:self.firstImageView
                                                                                  attribute:NSLayoutAttributeTrailing
                                                                                 multiplier:1
                                                                                   constant:0
                                                       ];
    secondImageViewXConstraints.active = YES;
    NSLayoutConstraint *secondImageViewYConstraints = [NSLayoutConstraint constraintWithItem:secondImageView
                                                                                  attribute:NSLayoutAttributeTop
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:self.view
                                                                                  attribute:NSLayoutAttributeTop
                                                                                 multiplier:1
                                                                                   constant:0.0];
    secondImageViewYConstraints.active = YES;
    
    
      //-------------------box3
    
    NSLayoutConstraint *thirdImageViewWidthConstraints = [NSLayoutConstraint constraintWithItem:thirdImageView
                                                                                       attribute:NSLayoutAttributeWidth
                                                                                       relatedBy:NSLayoutRelationEqual
                                                                                          toItem:self.view
                                                                                       attribute:NSLayoutAttributeWidth
                                                                                      multiplier:1
                                                                                        constant:0.0];
    thirdImageViewWidthConstraints.active = YES;
    NSLayoutConstraint *thirdImageViewHeightConstraints = [NSLayoutConstraint constraintWithItem:thirdImageView
                                                                                        attribute:NSLayoutAttributeHeight
                                                                                        relatedBy:NSLayoutRelationEqual
                                                                                           toItem:self.view
                                                                                        attribute:NSLayoutAttributeHeight
                                                                                       multiplier:1
                                                                                         constant:0.0];
    thirdImageViewHeightConstraints.active = YES;
    NSLayoutConstraint *thirdImageViewXConstraints = [NSLayoutConstraint constraintWithItem:thirdImageView
                                                                                   attribute:NSLayoutAttributeLeading
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:secondImageView
                                                                                   attribute:NSLayoutAttributeTrailing
                                                                                  multiplier:1
                                                                                    constant:0
                                                       ];
    thirdImageViewXConstraints.active = YES;
//end of scroll view
    NSLayoutConstraint *thirdImageViewTrailingConstraints = [NSLayoutConstraint constraintWithItem:thirdImageView
                                                                                  attribute:NSLayoutAttributeTrailing
                                                                                  relatedBy:NSLayoutRelationEqual
                                                                                     toItem:self.uiScrollView
                                                                                  attribute:NSLayoutAttributeTrailing
                                                                                 multiplier:1
                                                                                   constant:0
                                                      ];
    thirdImageViewTrailingConstraints.active = YES;


    NSLayoutConstraint *thirdImageViewYConstraints = [NSLayoutConstraint constraintWithItem:thirdImageView
                                                                                   attribute:NSLayoutAttributeTop
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:self.view
                                                                                   attribute:NSLayoutAttributeTop
                                                                                  multiplier:1
                                                                                    constant:0.0];
    thirdImageViewYConstraints.active = YES;
    
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.firstImageView;
}

//- (void)viewDidLayoutSubviews{
//    CGFloat width = self.view.frame.size.width;
//    [self.uiScrollView setContentSize:CGSizeMake(width*3, self.view.frame.size.height)];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
