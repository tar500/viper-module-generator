//
// Created by vipergen
//

#import <Foundation/Foundation.h>
#import "VIPERProtocols.h"

@class VIPERDataManager;

@interface VIPERInteractor : NSObject <VIPERInteractorInputProtocol>

@property (nonatomic, weak) id <VIPERInteractorOutputProtocol> output;
@property (nonatomic, strong) VIPERDataManager *dataManager;

@end