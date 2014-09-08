//
//  XGMRetangulo.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 21/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMRetangulo.h"

@implementation XGMRetangulo

-(NSString *)calculaArea
{
    self.base = [self.baseTF.text integerValue];
    self.altura = [self.alturaTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Ar = b . h\nAr = %d . %d\nAr = %d u²",_base,_altura,_base * _altura]];
    
    return str;
}

-(NSString *)calculaDiagonal
{
    self.base = [self.baseTF.text integerValue];
    self.altura = [self.alturaTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Dr² = b² + h²\nDr² = %d² + %d²\n",_base,_altura]];
    [str appendString:[NSString stringWithFormat:@"Dr² = %d + %d\nDr² = %d\n",_base * _base,_altura * _altura,_base * _base + _altura * _altura]];
    [str appendString:[NSString stringWithFormat:@"Dr = √%d\nDr = %g u",_base * _base + _altura * _altura,sqrtf(_base * _base + _altura * _altura)]];
    
    return str;
}

@end
