//
//  ZoomViewController.m
//  ImageGalleries
//
//  Created by Jamie on 2018-08-13.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "ZoomViewController.h"

@interface ZoomViewController ()<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *uiScrollView;
@property (nonatomic, strong) IBOutlet UIImageView *imageView;

@end


@implementation ZoomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.uiScrollView.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    
    return self.imageView;
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
