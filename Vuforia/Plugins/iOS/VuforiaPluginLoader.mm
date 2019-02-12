#import <objc/message.h>
#import "UnityAppController.h"

struct VuforiaPlugin;
bool LoadVuforiaPlugin(VuforiaPlugin* plugin, const char* pluginName);

@interface UnityVuforiaVRIntegration : NSObject
{
}

@end

@implementation UnityVuforiaVRIntegration
{
}

+ (NSNumber*) loadPlugin:(NSValue*) plugin withName:(NSValue*) pluginName
{
    bool res = LoadVuforiaPlugin((VuforiaPlugin*)[plugin pointerValue], (const char*)[pluginName pointerValue]);
    return [NSNumber numberWithBool:res];
}

@end
