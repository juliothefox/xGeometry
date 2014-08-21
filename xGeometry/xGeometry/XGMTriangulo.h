//
//  XGMTriangulo.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XGMTriangulo : NSObject

@property (nonatomic) IBOutlet UITextField *baseTF;
@property (nonatomic) IBOutlet UITextField *ladoTF;

@property (nonatomic) NSInteger base;
@property (nonatomic) NSInteger lado;

-(NSString *)calculaAlturaEquilatero;
-(NSString *)calculaAreaEquilatero;
-(NSString *)calculaAlturaIsosceles;
-(NSString *)calculaAreaIsosceles;

@end
