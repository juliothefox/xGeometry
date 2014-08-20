//
//  XGMCilindro.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XGMCirculo.h"

@interface XGMCilindro : NSObject

@property XGMCirculo *base;
@property (nonatomic) IBOutlet UITextField *alturaTF;
@property NSInteger altura;

-(NSString *)calculaAreaLateral;
-(NSString *)calculaVolume;

@end
