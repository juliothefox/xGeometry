//
//  XGMCalculoViewController.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 18/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XGMCalculoViewController : UIViewController

@property (nonatomic) NSInteger forma;
@property (nonatomic) NSInteger propriedade;

-(UIView *)areaQuadrado;
-(UIView *)diagonalQuadrado;

@end
