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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //create 3 image views
    UIImageView *firstImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    UIImageView *secondImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    UIImageView *thirdImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    // set auto resizing to no
    [firstImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [secondImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [thirdImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    // add images as subviews to scroll view
    [self.uiScrollView addSubview:firstImageView];
    [self.uiScrollView addSubview:secondImageView];
    [self.uiScrollView addSubview:thirdImageView];
    //create 3 images
    UIImage *image1 = [UIImage imageNamed: @"Lighthouse-in-field.png"];
    UIImage *image2 = [UIImage imageNamed: @"Lighthouse-night.png"];
    UIImage *image3 = [UIImage imageNamed: @"Lighthouse-zoomed.png"];
    //set the images to the image views
    firstImageView.image = image1;
    firstImageView.image = image2;
    firstImageView.image = image3;

   
    
    
    //-------------------box1
    NSLayoutConstraint *firstImageViewWidthConstraints = [NSLayoutConstraint constraintWithItem:firstImageView
                                                                                        attribute:NSLayoutAttributeWidth
                                                                                        relatedBy:NSLayoutRelationEqual
                                                                                           toItem:self.view
                                                                                        attribute:NSLayoutAttributeWidth
                                                                                       multiplier:1
                                                                                         constant:0.0];
    firstImageViewWidthConstraints.active = YES;
    NSLayoutConstraint *firstImageViewHeightConstraints = [NSLayoutConstraint constraintWithItem:firstImageView
                                                                                      attribute:NSLayoutAttributeHeight
                                                                                      relatedBy:NSLayoutRelationEqual
                                                                                         toItem:self.view
                                                                                      attribute:NSLayoutAttributeHeight
                                                                                     multiplier:1
                                                                                       constant:0.0];
    firstImageViewHeightConstraints.active = YES;
    
    NSLayoutConstraint *firstImageViewXConstraints = [NSLayoutConstraint constraintWithItem:firstImageView
                                                                                      attribute:NSLayoutAttributeLeading
                                                                                      relatedBy:NSLayoutRelationEqual
                                                                                         toItem:self.view
                                                                                      attribute:NSLayoutAttributeLeading
                                                                                     multiplier:1
                                                                                       constant:0.0];
    firstImageViewXConstraints.active = YES;
    NSLayoutConstraint *firstImageViewYConstraints = [NSLayoutConstraint constraintWithItem:firstImageView
                                                                                       attribute:NSLayoutAttributeTop
                                                                                       relatedBy:NSLayoutRelationEqual
                                                                                          toItem:self.view
                                                                                       attribute:NSLayoutAttributeTop
                                                                                      multiplier:1
                                                                                        constant:0.0];
    firstImageViewYConstraints.active = YES;
    
    
    
    
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
                                                                                     toItem:firstImageView
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
    NSLayoutConstraint *thirdImageViewYConstraints = [NSLayoutConstraint constraintWithItem:thirdImageView
                                                                                   attribute:NSLayoutAttributeTop
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:self.view
                                                                                   attribute:NSLayoutAttributeTop
                                                                                  multiplier:1
                                                                                    constant:0.0];
    thirdImageViewYConstraints.active = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
