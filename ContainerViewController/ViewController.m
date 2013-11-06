//
//  ViewController.m
//  ContainerViewController
//
//  Created by Yan Saraev on 11/7/13.
//  Copyright (c) 2013 Yan Saraev. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"
#import "CViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    BViewController *bViewController = [[BViewController alloc]init];
    [self addChildViewController:bViewController];
    [self.scrollView addSubview:bViewController.view];
    [bViewController didMoveToParentViewController:self];
    
    CViewController *cViewController = [[CViewController alloc]init];
    CGRect frame = cViewController.view.frame;
    frame.origin.x = 320;
    cViewController.view.frame = frame;
    
    [self addChildViewController:cViewController];
    [self.scrollView addSubview:cViewController.view];
    [cViewController didMoveToParentViewController:self];
    
    self.scrollView.contentSize = CGSizeMake(640, self.view.frame.size.height);
    self.scrollView.pagingEnabled = YES;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
