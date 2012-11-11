//
//  View.m
//  sampleMVC
//
//  Created by katsumeshi on 2012/11/11.
//  Copyright (c) 2012年 katsumeshi. All rights reserved.
//

#import "View.h"

@implementation View

@synthesize button = _button;
@synthesize label = _label;

- (void)dealloc
{
    [_label release];
    [_button release];
    [super dealloc];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _button.frame = CGRectMake(frame.size.width / 2 - 100 / 2, 100, 100, 30);
        [_button setTitle:@"Push!!" forState:UIControlStateNormal];
        [self addSubview:_button];
        
        _label = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width / 2 - 150 / 2, 0, 150, 20)];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.text = @"None";
        [self addSubview:_label];
        
        [_label release];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
