//
//  ViewController.h
//  sampleMVC
//
//  Created by katsumeshi on 2012/11/11.
//  Copyright (c) 2012年 katsumeshi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "View.h"
#import "Model.h"

@interface ViewController : UIViewController
{
    @private
    View *_aview;
    Model *_amodel;
}
@end
