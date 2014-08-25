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

-(void)updateFont;

-(NSString *)explicacaoCilindro;
-(NSString *)explicacaoCirculo;
-(NSString *)explicacaoCone;
-(NSString *)explicacaoCubo;
-(NSString *)explicacaoEsfera;
-(NSString *)explicacaoQuadrado;
-(NSString *)explicacaoRetangulo;
-(NSString *)explicacaoTrapezio;
-(NSString *)explicacaoTriangulo;
-(NSString *)explicacaoTroncoDeCone;

@end
