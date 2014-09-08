//
//  XGMCilindro.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XGMCirculo.h"

@interface XGMCilindro : NSObject

@property XGMCirculo *base;
@property (nonatomic) UITextField *alturaTF;
@property (nonatomic) NSInteger altura;

@property (nonatomic) UITextField *piTF;
@property (nonatomic) NSString *piStr;

-(NSString *)calculaAreaLateral;
-(NSString *)calculaAreaTotal;
-(NSString *)calculaVolume;

@end
