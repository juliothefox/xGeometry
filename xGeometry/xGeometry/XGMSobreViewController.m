//
//  XGMSobreViewController.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 25/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMSobreViewController.h"

@interface XGMSobreViewController ()

@end

@implementation XGMSobreViewController

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
    self.sobreTV.font = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    self.sobre = @"xGeometry\n\nVersão 1.0\nCriado por Júlio César Menezes Noronha\nTodos os direitos reservados.\n\nNão delete esse aplicativo, em breve haverá atualizações! E não o use para colar nas provas de matemática =)!";
    
    NSNotificationCenter *notification = [NSNotificationCenter defaultCenter];
    [notification addObserver:self selector:@selector(updateFont) name:UIContentSizeCategoryDidChangeNotification object:nil];
}

-(void)updateFont
{
    self.sobreTV.font = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
}

-(void)dealloc
{
    NSNotificationCenter *notification = [NSNotificationCenter defaultCenter];
    [notification removeObserver:self];
}

-(void)viewWillAppear:(BOOL)animated
{
    self.sobreTV.text = self.sobre;
    [self updateFont];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
