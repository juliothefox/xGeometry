//
//  XGMTrapezio.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 21/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMTrapezio.h"

@implementation XGMTrapezio

-(NSString *)calculaArea
{
    self.baseMaior = [self.baseMaiorTF.text integerValue];
    self.baseMenor = [self.baseMenorTF.text integerValue];
    self.altura    = [self.alturaTF.text    integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"At = (B + b) . h/2\nAt = (%d + %d) . %d/2\n",_baseMaior,_baseMenor,_altura]];
    [str appendString:[NSString stringWithFormat:@"At = %d . %d/2\nAt = %d/2\n At = %g u²",_baseMaior + _baseMenor,_altura,(_baseMaior + _baseMenor) * _altura, (float)((_baseMaior + _baseMenor) * _altura)/2]];
    
    return str;
}

@end
