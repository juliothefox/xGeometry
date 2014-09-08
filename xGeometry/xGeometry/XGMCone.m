//
//  XGMCone.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMCone.h"

@implementation XGMCone

-(NSString *)calculaAreaLateral
{
    self.base.raio = [self.base.raioTF.text integerValue];
    self.geratriz = [self.geratrizTF.text integerValue];
    
    float pi = [_piTF.text floatValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como %g:\nAl = π . r . g\n",pi]];
    [str appendString:[NSString stringWithFormat:@"Al = π . %d . %d\n",self.base.raio,self.geratriz]];
    [str appendString:[NSString stringWithFormat:@"Al = %d . π\n",self.base.raio * self.geratriz]];
    [str appendString:[NSString stringWithFormat:@"Al = %g u²",self.base.raio * self.geratriz * pi]];
    
    return str;
}

-(NSString *)calculaAreaTotal
{
    self.base.raio = [self.base.raioTF.text integerValue];
    self.geratriz = [self.geratrizTF.text integerValue];
    
    float pi = [_piTF.text floatValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como %g:\nAl = π . r . g\n",pi]];
    [str appendString:[NSString stringWithFormat:@"Al = π . %d . %d\n",self.base.raio,self.geratriz]];
    [str appendString:[NSString stringWithFormat:@"Al = %d . π\n",self.base.raio * self.geratriz]];
    [str appendString:[NSString stringWithFormat:@"Al = %g u²\n\n",self.base.raio * self.geratriz * pi]];
    
    [str appendString:[NSString stringWithFormat:@"Ab = π . r²\n"]];
    [str appendString:[NSString stringWithFormat:@"Ab = π . %d²\n",self.base.raio]];
    [str appendString:[NSString stringWithFormat:@"Ab = π . %d\n",self.base.raio * self.base.raio]];
    [str appendString:[NSString stringWithFormat:@"Ab = %g u²\n\n",self.base.raio * self.base.raio * pi]];
    
    [str appendString:[NSString stringWithFormat:@"At = Al + Ab\nAt = %g + %g\n",self.base.raio * self.geratriz * pi,self.base.raio * self.base.raio * pi]];
    [str appendString:[NSString stringWithFormat:@"At = %g u²",self.base.raio * self.geratriz * pi + self.base.raio * self.base.raio * pi]];
    
    return str;
}

-(NSString *)calculaVolume
{
    self.base.raio = [self.base.raioTF.text integerValue];
    self.altura = [self.alturaTF.text integerValue];
    
    float pi = [_piTF.text floatValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como %g:\nVc = 1/3 . π . r² . h\n",pi]];
    [str appendString:[NSString stringWithFormat:@"Vc = 1/3 . π . %d² . %d\n",self.base.raio,self.altura]];
    [str appendString:[NSString stringWithFormat:@"Vc = 1/3 . %d . π\n",self.base.raio * self.base.raio * self.altura]];
    [str appendString:[NSString stringWithFormat:@"Vc = %g . π\n",(float)(self.base.raio * self.base.raio * self.altura)/3]];
    
    float resultado = pi * self.base.raio * self.base.raio * self.altura / 3;
    
    [str appendString:[NSString stringWithFormat:@"Vc = %g u³",resultado]];
    
    return str;
}

@end
