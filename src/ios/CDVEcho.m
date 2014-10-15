#import "CDVEcho.h"

@implementation CDVEcho

- (void)echo:(CDVInvokedUrlCommand *)command {
    CDVPluginResult *pluginResult = Nil;
    
    NSString *msg = [command.arguments objectAtIndex:0];
    
    if (msg != Nil && [msg length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:msg];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end