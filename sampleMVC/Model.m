//
//  Model.m
//  sampleMVC
//
//  Created by katsumeshi on 2012/11/11.
//  Copyright (c) 2012年 katsumeshi. All rights reserved.
//

#import "Model.h"

@implementation Model

@synthesize pushCount = _pushCount;

- (void)dealloc
{
    _pushCount = 0;
    [super dealloc];
}

- (id)init
{
    self = [super init];
    if (self) {
        _pushCount = 0;
    }
    return self;
}

- (void)update
{
    
    [self willChangeValueForKey:@"pushCount"];
    _pushCount++;
    [self didChangeValueForKey:@"pushCount"];
}
@end
