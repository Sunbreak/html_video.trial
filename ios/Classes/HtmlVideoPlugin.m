#import "HtmlVideoPlugin.h"
#if __has_include(<html_video/html_video-Swift.h>)
#import <html_video/html_video-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "html_video-Swift.h"
#endif

@implementation HtmlVideoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHtmlVideoPlugin registerWithRegistrar:registrar];
}
@end
