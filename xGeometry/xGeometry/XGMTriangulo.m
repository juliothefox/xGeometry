//
//  XGMTriangulo.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMTriangulo.h"

@implementation XGMTriangulo

-(NSString *)calculaAlturaEquilatero
{
    self.lado = [self.ladoTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"h = l/2√3\n"]];
    [str appendString:[NSString stringWithFormat:@"h = %d/2√3\n",self.lado]];
    [str appendString:[NSString stringWithFormat:@"h = %f√3\n",(float)self.lado/2]];
    
    return str;
}

-(NSString *)calculaAlturaIsosceles
{
    self.lado = [self.ladoTF.text integerValue];
    self.base = [self.baseTF.text integerValue];
    
    float altura = sqrtf((float)((self.lado*self.lado) - ((self.base/2) * (self.base/2))));
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"h² = l² - (b/2)²\nh² = %d² - (%d/2)²\n",self.lado,self.base]];
    [str appendString:[NSString stringWithFormat:@"h² = %d - %d/4\n",self.lado * self.lado,self.base * self.base]];
    [str appendString:[NSString stringWithFormat:@"h² = %d - %d\n",self.lado * self.lado,(self.base * self.base) / 4]];
    [str appendString:[NSString stringWithFormat:@"h² = %f\n",(float)(self.lado * self.lado) - ((self.base * self.base) / 4)]];
    [str appendString:[NSString stringWithFormat:@"h = √%f\n",(float)(self.lado * self.lado) - ((self.base * self.base) / 4)]];
    [str appendString:[NSString stringWithFormat:@"h = %f",altura]];
    
    return str;
}

-(NSString *)calculaAreaEquilatero
{
    self.lado = [self.ladoTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"A = l²/4√3\nA = %d²/4√3\n",self.lado]];
    [str appendString:[NSString stringWithFormat:@"A = %f√3\n",(float)self.lado * self.lado / 4]];
    
    return str;
}

-(NSString *)calculaAreaIsosceles
{
    self.lado = [self.ladoTF.text integerValue];
    self.base = [self.baseTF.text integerValue];
    
    float altura = sqrtf((float)((self.lado * self.lado) - ((self.base/2) * (self.base/2))));
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"A = b . h/2\nA = %d . %f/2\n",_base,altura]];
    [str appendString:[NSString stringWithFormat:@"A = %f/2\nA = %f",_base * altura, _base * altura / 2]];
    
    return str;
}

@end
