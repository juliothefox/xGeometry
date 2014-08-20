//
//  XGMCone.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XGMCilindro.h"

@interface XGMCone : NSObject

@property (nonatomic) XGMCirculo *base;
@property (nonatomic) IBOutlet UITextField *geratrizTF;
@property (nonatomic) NSInteger geratriz;
@property (nonatomic) IBOutlet UITextField *alturaTF;
@property (nonatomic) NSInteger altura;

-(NSString *)calculaAreaLateral;
-(NSString *)calculaAreaTotal;
-(NSString *)calculaVolume;

@end
