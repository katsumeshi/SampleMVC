//
//  ViewController.m
//  sampleMVC
//
//  Created by katsumeshi on 2012/11/11.
//  Copyright (c) 2012年 katsumeshi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)dealloc
{
    [_aview release];
    [_amodel release];
    [super dealloc];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    _amodel = [[Model alloc] init];
    [_amodel addObserver:self
              forKeyPath:@"pushCount"
                 options:(NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld)
                 context:nil];
    
    
    _aview = [[View alloc] initWithFrame:CGRectMake(0, 150, self.view.frame.size.width, 400)];
    [_aview.button addTarget:self action:@selector(pushButton:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_aview];
    
    [_aview release];
}

- (void)pushButton: (id)sender
{
    [_amodel update];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqual:@"pushCount"]) {
        [_aview.label setText:[NSString stringWithFormat:@"%d", _amodel.pushCount]];
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
