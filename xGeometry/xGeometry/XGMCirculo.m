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
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nAc = π.r²\n"]];
    [str appendString:[NSString stringWithFormat:@"Ac = π.%d²\n",self.raio]];
    [str appendString:[NSString stringWithFormat:@"Ac = π.%d\n",self.raio * self.raio]];
    [str appendString:[NSString stringWithFormat:@"Ac = %f",self.raio * self.raio * 3.14]];
    
    return str;
}

-(NSString *)calculaCircunferencia
{
    self.raio = [self.raioTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como 3,14:\nCc = 2.π.r\n"]];
    [str appendString:[NSString stringWithFormat:@"Cc = 2.π.%d\n",self.raio]];
    [str appendString:[NSString stringWithFormat:@"Cc = %d.π\n",2 * self.raio]];
    [str appendString:[NSString stringWithFormat:@"Cc = %f\n",2 * self.raio * 3.14]];
    
    return str;
}

@end
