#import "TesterPlugin.h"
#if __has_include(<tester/tester-Swift.h>)
#import <tester/tester-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "tester-Swift.h"
#endif

@implementation TesterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTesterPlugin registerWithRegistrar:registrar];
}
@end
