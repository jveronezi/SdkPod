//
//  SdkPodViewController.m
//  Pods
//
//  Created by Joao victor Veronezi on 23/01/24.
//

#import "SdkPodViewController.h"
#import <React/RCTRootView.h>
#import <React/RCTBridge.h>
#import <React/RCTBridgeDelegate.h>
#import <React/RCTBridgeModule.h>

@interface SdkPodViewController () <RCTBridgeDelegate, RCTBridgeModule>
@end


@implementation SdkPodViewController

RCT_EXPORT_MODULE()

- (void)viewDidLoad {
    [super viewDidLoad];
    // Set up the React Native view
    
    RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:@{}];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge
                                                        moduleName:@"PaciolanSDK"
                                                 initialProperties:nil];
    self.view = rootView;
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {

    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSURL *url = [bundle URLForResource:@"PaciolanSDK" withExtension:@"js"];
    return url;

}

@end
