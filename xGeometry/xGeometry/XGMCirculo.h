//
//  XGMCirculo.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XGMCirculo : NSObject

@property (nonatomic) UITextField *raioTF;
@property (nonatomic) NSInteger raio;

@property (nonatomic) UITextField *piTF;
@property (nonatomic) NSString *piStr;

-(NSString *)calculaArea;
-(NSString *)calculaCircunferencia;

@end
