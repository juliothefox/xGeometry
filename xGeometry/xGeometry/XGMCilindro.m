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
    
    self.piStr = [NSString stringWithFormat:@"3.14%f",[_piTF.text floatValue]];
    float pi = [_piStr floatValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como %g:\nAl = 2 . π . r . h\n",pi]];
    [str appendString:[NSString stringWithFormat:@"Al = 2 . π . %d . %d\n",(int)_base.raio,(int)_altura]];
    [str appendString:[NSString stringWithFormat:@"Al = %d . π\n",2 *(int)_base.raio * (int)_altura]];
    [str appendString:[NSString stringWithFormat:@"Al = %g u²",2 *(int)_base.raio * (int)_altura * pi]];
    
    return str;
}

-(NSString *)calculaAreaTotal
{
    self.base.raio = [self.base.raioTF.text integerValue];
    self.altura = [self.alturaTF.text integerValue];
    
    self.piStr = [NSString stringWithFormat:@"3.14%f",[_piTF.text floatValue]];
    float pi = [_piStr floatValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
//    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nAl = 2 . π . r . h\n"]];
//    [str appendString:[NSString stringWithFormat:@"Al = 2 . π . %d . %d\n",(int)_base.raio,(int)_altura]];
//    [str appendString:[NSString stringWithFormat:@"Al = %d .π\n",2 *(int)_base.raio * (int)_altura]];
//    [str appendString:[NSString stringWithFormat:@"Al = %g u²\n\n",2 *(int)_base.raio * (int)_altura * 3.14]];
//    
//    [str appendString:[NSString stringWithFormat:@"Ab = π .r²\n"]];
//    [str appendString:[NSString stringWithFormat:@"Ab = π .%d²\n",(int)_base.raio]];
//    [str appendString:[NSString stringWithFormat:@"Ab = π .%d\n",(int)_base.raio * (int)_base.raio]];
//    [str appendString:[NSString stringWithFormat:@"Ab = %g u²\n\n",(int)_base.raio * (int)_base.raio * 3.14]];
//    
//    [str appendString:[NSString stringWithFormat:@"At = Al + 2 . Ab\n"]];
//    [str appendString:[NSString stringWithFormat:@"At = %g + 2 . %g\n",2 *(int)_base.raio * (int)_altura * 3.14,(int)_base.raio * (int)_base.raio * 3.14]];
//    [str appendString:[NSString stringWithFormat:@"At = %g u²\n",2 *(int)_base.raio * (int)_altura * 3.14 + (int)_base.raio * (int)_base.raio * 3.14]];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como %g:\nAt = 2 . π . r (r + h)\n",pi]];
    [str appendString:[NSString stringWithFormat:@"At = 2 . π . %d (%d + %d)\n",(int)_base.raio,(int)_base.raio,(int)_altura]];
    [str appendString:[NSString stringWithFormat:@"At = %d . π (%d)\n",(int) (2 * _base.raio), (int)(_base.raio + _altura)]];
    [str appendString:[NSString stringWithFormat:@"At = %d . π\n",(int) (2 * _base.raio * (_base.raio + _altura))]];
    [str appendString:[NSString stringWithFormat:@"At = %g u²\n",2 * _base.raio * (_base.raio + _altura) * pi]];
    
    return str;
}

-(NSString *)calculaVolume
{
    self.base.raio = [self.base.raioTF.text integerValue];
    self.altura = [self.alturaTF.text integerValue];
    
    self.piStr = [NSString stringWithFormat:@"3.14%f",[_piTF.text floatValue]];
    float pi = [_piStr floatValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como %g:\nVc = π . r² . h\n",pi]];
    [str appendString:[NSString stringWithFormat:@"Vc = π . %d² . %d\n",(int)_base.raio,(int)_altura]];
    [str appendString:[NSString stringWithFormat:@"Vc = %d . π\n",(int)_base.raio * (int)_base.raio * (int)_altura]];
    [str appendString:[NSString stringWithFormat:@"Vc = %g u³\n",(int)_base.raio * (int)_base.raio * (int)_altura * pi]];
    
    return str;
}

@end
