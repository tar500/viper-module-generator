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
@property (nonatomic, strong) VIPERViewController *viewController;
@end

@implementation VIPERWireframe

- (id)init {
    self = [super init];
    if (self) {
        [self connectDependencies];
    }
    return self;
}


#pragma mark - Dependencies

- (void)connectDependencies {
    
    // Generating module components
    self.viewController = [[VIPERViewController alloc] init];
    VIPERPresenter *presenter = [VIPERPresenter new];
    VIPERInteractor *interactor = [VIPERInteractor new];
    VIPERDataManager *dataManager = [VIPERDataManager new];
    
    // Connecting
    self.viewController.presenter = presenter;
    
    presenter.view = self.viewController;
    presenter.wireframe = self;
    presenter.interactor = interactor;
    
    interactor.output = presenter;
    interactor.dataManager = dataManager;
    
    self.presenter = presenter;
}

// Call this method in order to dealloc all of this module hierarchy
- (void)disconnectDependencies {
    self.viewController = nil;
    self.presenter = nil;
}


#pragma mark - Present/Dismiss

- (void)presentFromNavigationController:(UINavigationController *)navController {

    [navController pushViewController:self.viewController animated:YES];
    
    
//    // Present as Modal VC
//    [navController presentViewController:self.viewController animated:YES completion:^{
//
//    }];
    
}

- (void)dismiss {
    
    [self.viewController.navigationController popViewControllerAnimated:YES];
    [self disconnectDependencies];
    
    
//    // Dismiss Modal VC
//    __weak typeof (self) weakSelf = self;
//    [self.viewController.presentingViewController dismissViewControllerAnimated:YES completion:^{
//        [weakSelf disconnectDependencies];
//    }];
}

@end
