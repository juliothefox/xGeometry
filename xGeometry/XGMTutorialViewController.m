//
//  XGMTutorialViewController.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 04/09/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMTutorialViewController.h"

@interface XGMTutorialViewController ()

@end

@implementation XGMTutorialViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated
{
    self.screenNumber.text = [NSString stringWithFormat:@"Screen #%d",self.index];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
