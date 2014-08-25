//
//  XGMCubo.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMCubo.h"

@implementation XGMCubo

-(NSString *)calculaAreaLateral
{
    self.lado = [self.ladoTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Al = 4 . l²\nAl = 4 . %d²\n",self.lado]];
    [str appendString:[NSString stringWithFormat:@"Al = 4 . %d\n",self.lado * 4]];
    [str appendString:[NSString stringWithFormat:@"Al = %d u²\n",self.lado * self.lado * 4]];
    
    return str;
}

-(NSString *)calculaAreaTotal
{
    self.lado = [self.ladoTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"At = 6 . l²\nAt = 6 . %d²\n",self.lado]];
    [str appendString:[NSString stringWithFormat:@"At = 6 . %d\n",self.lado * 6]];
    [str appendString:[NSString stringWithFormat:@"At = %d u²\n",self.lado * self.lado * 6]];
    
    return str;
}

-(NSString *)calculaDiagonal
{
    self.lado = [self.ladoTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Dc = l√3\nDc = %d√3 u",self.lado]];
    
    return str;
}

-(NSString *)calculaVolume
{
    self.lado = [self.ladoTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Vc = l³\nVc = %d³\nVc = %d u³",self.lado,self.lado*self.lado*self.lado]];
    
    return str;
}

@end
