//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VIPERProtocols.h"

@class VIPERDataManager;

@interface VIPERInteractor : NSObject <VIPERInteractorInputProtocol>

@property (nonatomic, weak) id <VIPERInteractorOutputProtocol> output;
@property (nonatomic, strong) VIPERDataManager *dataManager;

@end