//
//  XGMCalculoViewController.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 18/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XGMResultadoViewController.h"
#import "XGMQuadrado.h"
#import "XGMCirculo.h"
#import "XGMCilindro.h"

@interface XGMCalculoViewController : UIViewController

@property (nonatomic) NSInteger forma;
@property (nonatomic) NSInteger propriedade;
@property (nonatomic) NSString *resultado;

@property (nonatomic) XGMQuadrado *quadrado;
@property (nonatomic) XGMCirculo *circulo;
@property (nonatomic) XGMCilindro *cilindro;

-(UIView *)areaQuadrado;
-(UIView *)diagonalQuadrado;
-(UIView *)areaCirculo;
-(UIView *)circunferenciaCirculo;
-(UIView *)areaLateralCilindro;
-(UIView *)volumeCilindro;

-(void) calculaAreaQuadrado;
-(void) calculaDiagonalQuadrado;
-(void) calculaAreaCirculo;
-(void) calculaCircunferenciaCirculo;
-(void) calculaAreaLateralCilindro;
-(void) calculaVolumeCilindro;

@end
