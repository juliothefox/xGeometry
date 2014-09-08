//
//  XGMRetangulo.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 21/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XGMRetangulo : NSObject

@property (nonatomic) UITextField *baseTF;
@property (nonatomic) NSInteger base;
@property (nonatomic) UITextField *alturaTF;
@property (nonatomic) NSInteger altura;

-(NSString *)calculaArea;
-(NSString *)calculaDiagonal;

@end
