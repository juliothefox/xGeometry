//
//  XGMQuadrado.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMQuadrado.h"

@implementation XGMQuadrado

-(NSString *)calculaArea
{
    self.lado = [self.ladoTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    [str appendString:@"Aq = l²\n"];
    [str appendString:[NSString stringWithFormat:@"Aq = %d²\n",self.lado]];
    [str appendString:[NSString stringWithFormat:@"Aq = %d\n",self.lado*self.lado]];
    
    return str;
}

-(NSString *)calculaDiagonal
{
    self.lado = [self.ladoTF.text integerValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    [str appendString:@"Dq = l.√2\n"];
    [str appendString:[NSString stringWithFormat:@"Dq = %d√2\n",self.lado]];
    
    return str;
}

@end
