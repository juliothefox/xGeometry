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
#import "XGMCone.h"

@interface XGMCalculoViewController : UIViewController

@property (nonatomic) NSInteger forma;
@property (nonatomic) NSInteger propriedade;
@property (nonatomic) NSString *resultado;

@property (nonatomic) XGMQuadrado *quadrado;
@property (nonatomic) XGMCirculo *circulo;
@property (nonatomic) XGMCilindro *cilindro;
@property (nonatomic) XGMCone *cone;

-(UIView *)areaQuadrado;
-(UIView *)diagonalQuadrado;
-(UIView *)areaCirculo;
-(UIView *)circunferenciaCirculo;
-(UIView *)areaLateralCilindro;
-(UIView *)areaTotalCilindro;
-(UIView *)volumeCilindro;
-(UIView *)areaLateralCone;
-(UIView *)areaTotalCone;
-(UIView *)volumeCone;

-(void) calculaAreaQuadrado;
-(void) calculaDiagonalQuadrado;
-(void) calculaAreaCirculo;
-(void) calculaCircunferenciaCirculo;
-(void) calculaAreaLateralCilindro;
-(void) calculaAreaTotalCilindro;
-(void) calculaVolumeCilindro;
-(void) calculaAreaLateralCone;
-(void) calculaAreaTotalCone;
-(void) calculaVolumeCone;

@end
