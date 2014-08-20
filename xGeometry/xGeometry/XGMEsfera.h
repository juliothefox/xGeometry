//
//  XGMEsfera.h
//  xGeometry
//
//  Created by Júlio Menezes Noronha on 20/08/14.
//  Copyright (c) 2014 Júlio César Menezes Noronha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XGMEsfera : NSObject

@property (nonatomic) IBOutlet UITextField *raioTF;
@property (nonatomic) NSInteger raio;

-(NSString *)calculaArea;
-(NSString *)calculaVolume;

@end
