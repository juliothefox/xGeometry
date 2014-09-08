//
//  XGMEsfera.m
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import "XGMEsfera.h"

@implementation XGMEsfera

-(NSString *)calculaArea
{
    self.raio = [self.raioTF.text integerValue];
    
    float pi = [_piTF.text floatValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como %g\nAe = 4 . π . r²\nAe = 4 . %d² . π\nAe = 4 . %d . π\nAe = %d . π\n Ae = %g u²",pi,self.raio,self.raio * self.raio, self.raio * self.raio * 4, self.raio * self.raio * 4 * pi]];
    
    return str;
}

-(NSString *)calculaVolume
{
    self.raio = [self.raioTF.text integerValue];
    
    float pi = [_piTF.text floatValue];
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    float x;
    
    [str appendString:[NSString stringWithFormat:@"Considerando π como %g\nVe = 4/3 . π . r³\n",pi]];
    [str appendString:[NSString stringWithFormat:@"Ve = 4/3 . π . %d³\n",self.raio]];
    [str appendString:[NSString stringWithFormat:@"Ve = 4/3 . %d . π\n",self.raio * self.raio * self.raio]];
    [str appendString:[NSString stringWithFormat:@"Ve = %g . π\n",(float)(self.raio * self.raio * self.raio*4)/3]];
    x = (float)(self.raio * self.raio * self.raio*4)/3;
    [str appendString:[NSString stringWithFormat:@"Ve = %g u³",x * pi]];
    
    return str;
}

@end
