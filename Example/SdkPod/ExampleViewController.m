//
//  SDKPODViewController.m
//  SdkPod
//
//  Created by 55355294 on 01/09/2024.
//  Copyright (c) 2024 55355294. All rights reserved.
//

#import "ExampleViewController.h"
#import "SdkPod/SdkPodViewController.h"

@interface ExampleViewController ()

@end

@implementation ExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)launchSdkPod:(UIButton *)sender {
        printf("Lauching SDK");
        UIViewController *viewController = nil;
        viewController = [[SdkPodViewController alloc] init];
        [self presentViewController:viewController animated:YES completion:nil];
}


@end
