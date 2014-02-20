//
//  ViewController.m
//  DemoWebViewController
//
//  Created by Tosin Afolabi on 20/02/2014.
//  Copyright (c) 2014 Tosin Afolabi. All rights reserved.
//

#import "ViewController.h"
#import "TAWebViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UINavigationController *webViewNavController;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Demo"];
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;

    [self.view setBackgroundColor:[UIColor colorWithRed:0.173 green:0.243 blue:0.314 alpha:1]];

    UIButton *loadWebView = [UIButton buttonWithType:UIButtonTypeCustom];
    [loadWebView setTitle:@"Load Web View" forState:UIControlStateNormal];
    [loadWebView setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [loadWebView setFrame:CGRectMake(85, 270, 150, 50)];
    [loadWebView addTarget:self action:@selector(showWebView) forControlEvents:UIControlEventTouchUpInside];

    [loadWebView.layer setBorderWidth:2.0f];
    [loadWebView.layer setCornerRadius:5.0f];
    [loadWebView.layer setBorderColor:[[UIColor whiteColor] CGColor]];

    [self.view addSubview:loadWebView];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dismissWebView) name:@"dismissButtonPressed" object:nil];
}

- (void)showWebView
{
    TAWebViewController *webViewController = [[TAWebViewController alloc] initWithURL:[NSURL URLWithString:@"http://google.com"]];
    [[self navigationController] pushViewController:webViewController animated:YES];
}

- (void)dismissWebView
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
