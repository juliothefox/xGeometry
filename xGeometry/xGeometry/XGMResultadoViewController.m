//
//  XGMResultadoViewController.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMResultadoViewController.h"

@interface XGMResultadoViewController ()

@end

@implementation XGMResultadoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Resultado";
    self.resultadoTV.font = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];;
    
    NSNotificationCenter *notification = [NSNotificationCenter defaultCenter];
    [notification addObserver:self selector:@selector(updateFont) name:UIContentSizeCategoryDidChangeNotification object:nil];
}

-(void)updateFont
{
    self.resultadoTV.font = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];;
}

-(void)viewWillAppear:(BOOL)animated
{
    self.resultadoTV.text = self.resultado;
    [self updateFont];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    NSNotificationCenter *notification = [NSNotificationCenter defaultCenter];
    [notification removeObserver:self];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
