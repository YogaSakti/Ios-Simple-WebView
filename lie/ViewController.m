//
//  ViewController.m
//  lie
//
//  Created by yogs on 06/07/18.
//  Copyright © 2018 oriable. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://oriable.co"]];
    
    [self.webV loadRequest:request];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(nonnull NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    NSLog(@"Loading : %@", request.URL.absoluteString);
    
    return YES;
}

- (void)webViewDidStartLoad: (UIWebView *)webView{
    
}

- (void)webViewDidFinishLoad: (UIWebView *)webView{
    
}

- (void)webView: (UIWebView *)webView didFailLoadWithError:(nullable NSError *)error{
    NSLog(@"Error : %@", [error debugDescription]);
}

@end
