//
//  XGMCirculo.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMCirculo.h"

@implementation XGMCirculo

-(NSString *)calculaArea
{
    self.raio = [self.raioTF.text integerValue];
    
    self.piStr = [NSString stringWithFormat:@"3.14%f",[_piTF.text floatValue]];
    float pi = [_piStr floatValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como %g:\nAc = π . r²\n",pi]];
    [str appendString:[NSString stringWithFormat:@"Ac = π . %d²\n",self.raio]];
    [str appendString:[NSString stringWithFormat:@"Ac = π . %d\n",self.raio * self.raio]];
    [str appendString:[NSString stringWithFormat:@"Ac = %g u²",self.raio * self.raio * pi]];
    
    return str;
}

-(NSString *)calculaCircunferencia
{
    self.raio = [self.raioTF.text integerValue];
    
    self.piStr = [NSString stringWithFormat:@"3.14%f",[_piTF.text floatValue]];
    float pi = [_piStr floatValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como %g:\nCc = 2 . π . r\n",pi]];
    [str appendString:[NSString stringWithFormat:@"Cc = 2 . π . %d\n",self.raio]];
    [str appendString:[NSString stringWithFormat:@"Cc = %d . π\n",2 * self.raio]];
    [str appendString:[NSString stringWithFormat:@"Cc = %g u\n",2 * self.raio * pi]];
    
    return str;
}

@end
