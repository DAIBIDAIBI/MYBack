//
//  JKWebView.m
//  JSCallOC
//
//  Created by wangdan on 15/11/17.
//  Copyright © 2015年 wangdan. All rights reserved.
//

#import "MYBack.h"
#import <JavaScriptCore/JavaScriptCore.h>


@interface MYBack()

@property (nonatomic,strong) UIWebView *webview;

@end
@implementation MYBack

-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    
    if( self ){
        _webview=[[UIWebView alloc]initWithFrame:CGRectMake(0, 200, self.bounds.size.width, 300)];
        _webview.backgroundColor=[UIColor lightGrayColor];
        [self addSubview:_webview];

        NSString *htmlPath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
        NSURL *localUrl = [[NSURL alloc] initFileURLWithPath:htmlPath];
        [_webview loadRequest:[NSURLRequest requestWithURL:localUrl]];
        
        JSContext *context = [_webview  valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
      
        context[@"eat"] = ^() {
            NSLog(@"+++++++Begin Log+++++++");
            NSArray *args = [JSContext currentArguments];
            for (JSValue *jsVal in args) {
                NSLog(@"%@", jsVal);
            }
            JSValue *this = [JSContext currentThis];
            NSLog(@"this: %@",this);
            NSLog(@"-------End Log-------");
            
        };
        
        context[@"context"] = ^(){
            NSArray  *f = [JSContext currentArguments];
            for (JSValue *al in f) {
                NSLog(@"%@", al);
            }
        };
        
    }  
    return self;
}
@end
