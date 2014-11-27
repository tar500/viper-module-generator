//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VIPERProtocols.h"

@class VIPERWireframe;

@interface VIPERPresenter : NSObject <VIPERInteractorOutputProtocol>

@property (nonatomic, weak) id <VIPERViewProtocol> view;
@property (nonatomic, strong) id <VIPERInteractorInputProtocol> interactor;
@property (nonatomic, strong) VIPERWireframe *wireframe;

/** VIEW -> PRESENTER methods */

- (void)updateView;

@end
