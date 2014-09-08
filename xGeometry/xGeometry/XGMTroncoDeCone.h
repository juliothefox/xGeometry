//
//  XGMTroncoDeCone.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 21/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XGMCirculo.h"

@interface XGMTroncoDeCone : NSObject

@property (nonatomic) XGMCirculo *baseMaior;
@property (nonatomic) XGMCirculo *baseMenor;

@property (nonatomic) UITextField *geratrizTF;
@property (nonatomic) NSInteger geratriz;

@property (nonatomic) UITextField *piTF;

-(NSString *)calculaArea;
-(NSString *)calculaVolume;

@end
