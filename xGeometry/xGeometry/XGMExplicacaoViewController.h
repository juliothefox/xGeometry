//
//  XGMExplicacaoViewController.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 25/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XGMExplicacaoViewController : UIViewController

@property (nonatomic) IBOutlet UITextView *explicacaoTV;
@property (nonatomic) NSInteger forma;

-(NSString *)explicacaoQuadrado;
-(void)updateFont;

@end
