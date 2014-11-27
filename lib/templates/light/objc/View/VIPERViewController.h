//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VIPERProtocols.h"

@class VIPERPresenter;

@interface VIPERViewController : UIViewController <VIPERViewProtocol>

@property (nonatomic, strong) VIPERPresenter *presenter;

@end
