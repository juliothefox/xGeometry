//
//  XGMTrapezio.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 21/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XGMTrapezio : NSObject

@property (nonatomic) IBOutlet UITextField *baseMenorTF;
@property (nonatomic) IBOutlet UITextField *baseMaiorTF;
@property (nonatomic) IBOutlet UITextField *alturaTF;

@property (nonatomic) NSInteger baseMenor;
@property (nonatomic) NSInteger baseMaior;
@property (nonatomic) NSInteger altura;

-(NSString *)calculaArea;

@end
