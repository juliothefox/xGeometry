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
    [str appendString:[NSString stringWithFormat:@"Al = 2 . π . %d . %d\n",self.base.raio,self.altura]];
    [str appendString:[NSString stringWithFormat:@"Al = %d . π\n",2 *self.base.raio * self.altura]];
    [str appendString:[NSString stringWithFormat:@"Al = %f",2 *self.base.raio * self.altura * 3.14]];
    
    return str;
}

-(NSString *)calculaAreaTotal
{
    self.base.raio = [self.base.raioTF.text integerValue];
    self.altura = [self.alturaTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nAl = 2 . π . r . h\n"]];
    [str appendString:[NSString stringWithFormat:@"Al = 2 . π . %d . %d\n",self.base.raio,self.altura]];
    [str appendString:[NSString stringWithFormat:@"Al = %d .π\n",2 *self.base.raio * self.altura]];
    [str appendString:[NSString stringWithFormat:@"Al = %f\n\n",2 *self.base.raio * self.altura * 3.14]];
    
    [str appendString:[NSString stringWithFormat:@"Ab = π .r²\n"]];
    [str appendString:[NSString stringWithFormat:@"Ab = π .%d²\n",self.base.raio]];
    [str appendString:[NSString stringWithFormat:@"Ab = π .%d\n",self.base.raio * self.base.raio]];
    [str appendString:[NSString stringWithFormat:@"Ab = %f\n\n",self.base.raio * self.base.raio * 3.14]];
    
    [str appendString:[NSString stringWithFormat:@"At = Al + 2 . Ab\n"]];
    [str appendString:[NSString stringWithFormat:@"At = %f + 2 . %f\n",2 *self.base.raio * self.altura * 3.14,self.base.raio * self.base.raio * 3.14]];
    [str appendString:[NSString stringWithFormat:@"At = %f\n",2 *self.base.raio * self.altura * 3.14 + self.base.raio * self.base.raio * 3.14]];
    
    return str;
}

-(NSString *)calculaVolume
{
    self.base.raio = [self.base.raioTF.text integerValue];
    self.altura = [self.alturaTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nVc = π . r² . h\n"]];
    [str appendString:[NSString stringWithFormat:@"Vc = π . %d² . %d\n",self.base.raio,self.altura]];
    [str appendString:[NSString stringWithFormat:@"Vc = %d . π\n",self.base.raio * self.base.raio * self.altura]];
    [str appendString:[NSString stringWithFormat:@"Vc = %f\n",self.base.raio * self.base.raio * self.altura * 3.14]];
    
    return  str;
}

@end
