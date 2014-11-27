//
// Created by vipergen on 2014.
// Copyright (c) 2014 DB Best. All rights reserved.
//

#import "VIPERWireframe.h"
#import "VIPERViewController.h"
#import "VIPERInteractor.h"
#import "VIPERPresenter.h"
#import "VIPERWireframe.h"
#import "VIPERDataManager.h"


@interface VIPERWireframe()
@property (nonatomic, strong) VIPERPresenter *presenter;
@property (nonatomic, strong) VIPERViewController *view;
@end

@implementation VIPERWireframe

- (id)init {
    self = [super init];
    if (self) {
        [self connectDependencies];
    }
    return self;
}

- (void)connectDependencies {
    
    // Generating module components
    self.view = [[VIPERViewController alloc] init];
    VIPERPresenter *presenter = [VIPERPresenter new];
    VIPERInteractor *interactor = [VIPERInteractor new];
    VIPERDataManager *dataManager = [VIPERDataManager new];
    
    // Connecting
    self.view.presenter = presenter;
    
    presenter.view = self.view;
    presenter.wireframe = self;
    presenter.interactor = interactor;
    
    interactor.output = presenter;
    interactor.dataManager = dataManager;
    
    self.presenter = presenter;
}

- (void)presentFromNavigationController:(UINavigationController *)navController
{
    //TOODO - New view controller presentation (present, push, pop, .. )
    [navController pushViewController:self.view animated:YES];
    
}

@end
