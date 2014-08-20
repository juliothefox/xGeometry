//
//  XGMQuadrado.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XGMQuadrado : NSObject

@property (nonatomic) IBOutlet UITextField *ladoTF;
@property (nonatomic) NSInteger lado;

-(NSString *)calculaArea;
-(NSString *)calculaDiagonal;

@end
