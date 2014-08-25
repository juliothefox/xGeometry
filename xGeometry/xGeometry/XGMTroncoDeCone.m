//
//  XGMTroncoDeCone.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 21/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMTroncoDeCone.h"

@implementation XGMTroncoDeCone

-(NSString *)calculaArea
{
    self.baseMaior.raio = [self.baseMaior.raioTF.text integerValue];
    self.baseMenor.raio = [self.baseMenor.raioTF.text integerValue];
    self.geratriz       = [self.geratrizTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nA = π . g . (R + r)\n"]];
    [str appendString:[NSString stringWithFormat:@"A = π . %d . (%d + %d)\n",_geratriz,_baseMaior.raio,_baseMenor.raio]];
    [str appendString:[NSString stringWithFormat:@"A = π . %d . %d",_geratriz,_baseMaior.raio + _baseMenor.raio]];
    [str appendString:[NSString stringWithFormat:@"A = %dπ\nA = %f u²",_geratriz * (_baseMaior.raio + _baseMenor.raio),(_geratriz * (_baseMaior.raio + _baseMenor.raio)) * 3.14]];
    
    return str;
}

-(NSString *)calculaVolume
{
    self.baseMaior.raio = [self.baseMaior.raioTF.text integerValue];
    self.baseMenor.raio = [self.baseMenor.raioTF.text integerValue];
    self.geratriz       = [self.geratrizTF.text integerValue];
    
    float resultado = 0;
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nV = (r² + r . R + R²) * h . π/3\n"]];
    [str appendString:[NSString stringWithFormat:@"V = (%d² + %d . %d + %d²) * %d . π/3\n",_baseMenor.raio,_baseMenor.raio,_baseMaior.raio,_baseMaior.raio,_geratriz]];
    [str appendString:[NSString stringWithFormat:@"V = (%d + %d + %d) * %d . π/3\n",_baseMenor.raio * _baseMenor.raio,_baseMenor.raio * _baseMaior.raio,_baseMaior.raio * _baseMaior.raio,_geratriz]];
    resultado = _baseMenor.raio * _baseMenor.raio + _baseMenor.raio * _baseMaior.raio + _baseMaior.raio * _baseMaior.raio;
    
    [str appendString:[NSString stringWithFormat:@"V = %d . %d . π/3\n",(int)resultado,_geratriz]];
    
    resultado = resultado * _geratriz;
    [str appendString:[NSString stringWithFormat:@"V = %d . π/3\n",(int)resultado]];

    resultado = resultado/3;
    [str appendString:[NSString stringWithFormat:@"V = %f . π\n",resultado]];
    [str appendString:[NSString stringWithFormat:@"V = %f u³",resultado * 3.14]];
    
    return str;
}

@end
