//
//  TAWebViewController.h
//  DemoWebViewController
//
//  Created by Tosin Afolabi on 20/02/2014.
//  Copyright (c) 2014 Tosin Afolabi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NJKWebViewProgress.h"

@interface TAWebViewController : UIViewController <UIWebViewDelegate, NJKWebViewProgressDelegate>

@property (nonatomic, strong) NSString *navigationBarFontName; // Default is Avenir Light
@property (nonatomic, strong) UIColor *progressBarColor; // Default is iOS7 Safari Bar Color
@property (nonatomic, strong) UIBarButtonItem *dismissWebViewBarButton;

- (id)initWithURL:(NSURL *)url;
- (id)initWithURL:(NSURL*)url title:(NSString *)title;

@end
