//
//  XGMTrapezio.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 21/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XGMTrapezio : NSObject

@property (nonatomic) UITextField *baseMenorTF;
@property (nonatomic) UITextField *baseMaiorTF;
@property (nonatomic) UITextField *alturaTF;

@property (nonatomic) NSInteger baseMenor;
@property (nonatomic) NSInteger baseMaior;
@property (nonatomic) NSInteger altura;

-(NSString *)calculaArea;

@end
