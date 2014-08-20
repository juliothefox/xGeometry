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
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nAl = π * r * g\n"]];
    [str appendString:[NSString stringWithFormat:@"Al = π * %d * %d\n",self.base.raio,self.geratriz]];
    [str appendString:[NSString stringWithFormat:@"Al = %d * π\n",self.base.raio * self.geratriz]];
    [str appendString:[NSString stringWithFormat:@"Al = %f",self.base.raio * self.geratriz * 3.14]];
    
    return str;
}

-(NSString *)calculaAreaTotal
{
    self.base.raio = [self.base.raioTF.text integerValue];
    self.geratriz = [self.geratrizTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nAl = π * r * g\n"]];
    [str appendString:[NSString stringWithFormat:@"Al = π * %d * %d\n",self.base.raio,self.geratriz]];
    [str appendString:[NSString stringWithFormat:@"Al = %d * π\n",self.base.raio * self.geratriz]];
    [str appendString:[NSString stringWithFormat:@"Al = %f\n\n",self.base.raio * self.geratriz * 3.14]];
    
    [str appendString:[NSString stringWithFormat:@"Ab = π * r²\n"]];
    [str appendString:[NSString stringWithFormat:@"Ab = π * %d²\n",self.base.raio]];
    [str appendString:[NSString stringWithFormat:@"Ab = π * %d\n",self.base.raio * self.base.raio]];
    [str appendString:[NSString stringWithFormat:@"Ab = %f\n\n",self.base.raio * self.base.raio * 3.14]];
    
    [str appendString:[NSString stringWithFormat:@"At = Al + Ab\nAt = %f + %f\n",self.base.raio * self.geratriz * 3.14,self.base.raio * self.base.raio * 3.14]];
    [str appendString:[NSString stringWithFormat:@"At = %f",self.base.raio * self.geratriz * 3.14 + self.base.raio * self.base.raio * 3.14]];
    
    return str;
}

-(NSString *)calculaVolume
{
    self.base.raio = [self.base.raioTF.text integerValue];
    self.altura = [self.alturaTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nVc = 1/3 * π * r² * h\n"]];
    [str appendString:[NSString stringWithFormat:@"Vc = 1/3 * π * %d² * %d\n",self.base.raio,self.altura]];
    [str appendString:[NSString stringWithFormat:@"Vc = 1/3 * %d * π\n",self.base.raio * self.base.raio * self.altura]];
    [str appendString:[NSString stringWithFormat:@"Vc = %f * π\n",(float)(self.base.raio * self.base.raio * self.altura)/3]];
    [str appendString:[NSString stringWithFormat:@"Vc = %f",3.14 * ((self.base.raio * self.base.raio * self.altura)/3)]];
    
    return str;
}

@end
