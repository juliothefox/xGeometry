//
//  XGMCilindro.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMCilindro.h"

@implementation XGMCilindro

-(NSString *)calculaAreaLateral
{
    self.base.raio = [self.base.raioTF.text integerValue];
    self.altura = [self.alturaTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nAl = 2 . π . r . h\n"]];
    [str appendString:[NSString stringWithFormat:@"Al = 2 . π . %d . %d\n",(int)_base.raio,(int)_altura]];
    [str appendString:[NSString stringWithFormat:@"Al = %d . π\n",2 *(int)_base.raio * (int)_altura]];
    [str appendString:[NSString stringWithFormat:@"Al = %.3f u²",2 *(int)_base.raio * (int)_altura * 3.14]];
    
    return str;
}

-(NSString *)calculaAreaTotal
{
    self.base.raio = [self.base.raioTF.text integerValue];
    self.altura = [self.alturaTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
//    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nAl = 2 . π . r . h\n"]];
//    [str appendString:[NSString stringWithFormat:@"Al = 2 . π . %d . %d\n",(int)_base.raio,(int)_altura]];
//    [str appendString:[NSString stringWithFormat:@"Al = %d .π\n",2 *(int)_base.raio * (int)_altura]];
//    [str appendString:[NSString stringWithFormat:@"Al = %.3f u²\n\n",2 *(int)_base.raio * (int)_altura * 3.14]];
//    
//    [str appendString:[NSString stringWithFormat:@"Ab = π .r²\n"]];
//    [str appendString:[NSString stringWithFormat:@"Ab = π .%d²\n",(int)_base.raio]];
//    [str appendString:[NSString stringWithFormat:@"Ab = π .%d\n",(int)_base.raio * (int)_base.raio]];
//    [str appendString:[NSString stringWithFormat:@"Ab = %.3f u²\n\n",(int)_base.raio * (int)_base.raio * 3.14]];
//    
//    [str appendString:[NSString stringWithFormat:@"At = Al + 2 . Ab\n"]];
//    [str appendString:[NSString stringWithFormat:@"At = %.3f + 2 . %.3f\n",2 *(int)_base.raio * (int)_altura * 3.14,(int)_base.raio * (int)_base.raio * 3.14]];
//    [str appendString:[NSString stringWithFormat:@"At = %.3f u²\n",2 *(int)_base.raio * (int)_altura * 3.14 + (int)_base.raio * (int)_base.raio * 3.14]];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nAt = 2 . π . r (r + h)\n"]];
    [str appendString:[NSString stringWithFormat:@"At = 2 . π . %d (%d + %d)\n",(int)_base.raio,(int)_base.raio,(int)_altura]];
    [str appendString:[NSString stringWithFormat:@"At = %d . π (%d)\n",(int) (2 * _base.raio), (int)(_base.raio + _altura)]];
    [str appendString:[NSString stringWithFormat:@"At = %d . π\n",(int) (2 * _base.raio * (_base.raio + _altura))]];
    [str appendString:[NSString stringWithFormat:@"At = %.3f\n",6.28 * _base.raio * (_base.raio + _altura)]];
    
    return str;
}

-(NSString *)calculaVolume
{
    self.base.raio = [self.base.raioTF.text integerValue];
    self.altura = [self.alturaTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nVc = π . r² . h\n"]];
    [str appendString:[NSString stringWithFormat:@"Vc = π . %d² . %d\n",(int)_base.raio,(int)_altura]];
    [str appendString:[NSString stringWithFormat:@"Vc = %d . π\n",(int)_base.raio * (int)_base.raio * (int)_altura]];
    [str appendString:[NSString stringWithFormat:@"Vc = %.3f u³\n",(int)_base.raio * (int)_base.raio * (int)_altura * 3.14]];
    
    return str;
}

@end
