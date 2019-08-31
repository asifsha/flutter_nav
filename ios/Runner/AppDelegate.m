#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"

#import "GoogleMaps/GoogleMaps.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];

  [GMSServices provideAPIKey: @"AIzaSyBM2NnahO78TWOhV0t4pXabmGp2wNpUqTk"];
  // Override point for customization after application launch.
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
