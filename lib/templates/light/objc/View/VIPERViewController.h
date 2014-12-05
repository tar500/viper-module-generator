//
// Created by vipergen
//

#import <UIKit/UIKit.h>
#import "VIPERProtocols.h"

@class VIPERPresenter;

@interface VIPERViewController : UIViewController <VIPERViewProtocol>

@property (nonatomic, strong) VIPERPresenter *presenter;

@end
