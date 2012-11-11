//
//  Model.h
//  sampleMVC
//
//  Created by katsumeshi on 2012/11/11.
//  Copyright (c) 2012年 katsumeshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (nonatomic, readonly) uint pushCount;

- (void)update;

@end
