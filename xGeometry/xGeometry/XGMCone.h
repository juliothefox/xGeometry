//
//  XGMCone.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XGMCilindro.h"

@interface XGMCone : NSObject

@property (nonatomic) XGMCirculo *base;
@property (nonatomic) UITextField *geratrizTF;
@property (nonatomic) NSInteger geratriz;
@property (nonatomic) UITextField *alturaTF;
@property (nonatomic) NSInteger altura;

@property (nonatomic) UITextField *piTF;

-(NSString *)calculaAreaLateral;
-(NSString *)calculaAreaTotal;
-(NSString *)calculaVolume;

@end
