//
// Created by vipergen
//

#import "VIPERViewController.h"
#import "VIPERPresenter.h"

@interface VIPERViewController()

@end


@implementation VIPERViewController


#pragma mark - ViewController Lifecycle

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [self.presenter updateView];
    
}

#pragma mark - View protocol methods

/** PRESENTER -> VIEW methods */


#pragma mark - IB Actions

/**
 * Connect interface builder actions here and pass them to the Presenter
 */

@end