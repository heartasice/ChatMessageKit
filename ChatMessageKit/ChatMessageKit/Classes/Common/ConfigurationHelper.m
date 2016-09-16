
#import "ConfigurationHelper.h"

// (Input Tool Bar Style Key)
NSString *kMessageInputViewVoiceNormalImageNameKey = @"com.smartcoder.MessageInputViewVoiceNormalImageNameKey";
NSString *kMessageInputViewVoiceHLImageNameKey = @"com.smartcoder.MessageInputViewVoiceHLImageNameKey";
NSString *kMessageInputViewVoiceHolderImageNameKey = @"com.smartcoder.MessageInputViewVoiceHolderImageNameKey";
NSString *kMessageInputViewVoiceHolderHLImageNameKey = @"com.smartcoder.MessageInputViewVoiceHolderHLImageNameKey";
NSString *kMessageInputViewExtensionNormalImageNameKey = @"com.smartcoder.MessageInputViewExtensionNormalImageNameKey";
NSString *kMessageInputViewExtensionHLImageNameKey = @"com.smartcoder.MessageInputViewExtensionHLImageNameKey";
NSString *kMessageInputViewKeyboardNormalImageNameKey = @"com.smartcoder.MessageInputViewKeyboardNormalImageNameKey";
NSString *kMessageInputViewKeyboardHLImageNameKey = @"com.smartcoder.MessageInputViewKeyboardHLImageNameKey";
NSString *kMessageInputViewEmotionNormalImageNameKey = @"com.smartcoder.MessageInputViewEmotionNormalImageNameKey";
NSString *kMessageInputViewEmotionHLImageNameKey = @"com.smartcoder.MessageInputViewEmotionHLImageNameKey";
NSString *kMessageInputViewBackgroundImageNameKey = @"com.smartcoder.MessageInputViewBackgroundImageNameKey";
NSString *kMessageInputViewBackgroundColorKey = @"com.smartcoder.MessageInputViewBackgroundColorKey";
NSString *kMessageInputViewBorderColorKey = @"com.smartcoder.MessageInputViewBorderColorKey";
NSString *kMessageInputViewBorderWidthKey = @"com.smartcoder.MessageInputViewBorderWidthKey";
NSString *kMessageInputViewCornerRadiusKey = @"com.smartcoder.MessageInputViewCornerRadiusKey";
NSString *kMessageInputViewPlaceHolderTextColorKey = @"com.smartcoder.MessageInputViewPlaceHolderTextColorKey";
NSString *kMessageInputViewPlaceHolderKey = @"com.smartcoder.MessageInputViewPlaceHolderKey";
NSString *kMessageInputViewTextColorKey = @"com.smartcoder.MessageInputViewTextColorKey";

// (Message Table Style Key)
NSString *kMessageTablePlaceholderImageNameKey = @"com.smartcoder.MessageTablePlaceholderImageNameKey";
NSString *kMessageTableReceivingSolidImageNameKey = @"com.smartcoder.MessageTableReceivingSolidImageNameKey";
NSString *kMessageTableSendingSolidImageNameKey = @"com.smartcoder.MessageTableSendingSolidImageNameKey";
NSString *kMessageTableVoiceUnreadImageNameKey = @"com.smartcoder.MessageTableVoiceUnreadImageNameKey";
NSString *kMessageTableAvatarPalceholderImageNameKey = @"com.smartcoder.MessageTableAvatarPalceholderImageNameKey";
NSString *kMessageTableTimestampBackgroundColorKey = @"com.smartcoder.MessageTableTimestampBackgroundColorKey";
NSString *kMessageTableTimestampTextColorKey = @"com.smartcoder.MessageTableTimestampTextColorKey";
NSString *kMessageTableAvatarTypeKey = @"com.smartcoder.MessageTableAvatarTypeKey";
NSString *kMessageTableCustomLoadAvatarNetworImageKey = @"com.smartcoder.MessageTableCustomLoadAvatarNetworImageKey";

@interface ConfigurationHelper ()

@property (nonatomic, strong, readwrite) NSArray *popMenuTitles;

@property (nonatomic, strong, readwrite) NSDictionary *messageInputViewStyle;

@property (nonatomic, strong, readwrite) NSDictionary *messageTableStyle;

@end

@implementation ConfigurationHelper

+ (instancetype)appearance {
    static ConfigurationHelper *configurationHelper = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        configurationHelper = [[ConfigurationHelper alloc] init];
    });
    return configurationHelper;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.popMenuTitles = @[NSLocalizedStringFromTable(@"copy", @"MessageDisplayKitString", @"复制文本消息"),
                               NSLocalizedStringFromTable(@"transpond", @"MessageDisplayKitString", @"转发"),
                               NSLocalizedStringFromTable(@"favorites", @"MessageDisplayKitString", @"收藏"),
                               NSLocalizedStringFromTable(@"more", @"MessageDisplayKitString", @"更多"),];
    }
    return self;
}

- (void)setupPopMenuTitles:(NSArray *)popMenuTitles {
    self.popMenuTitles = popMenuTitles;
}

- (void)setupMessageInputViewStyle:(NSDictionary *)messageInputViewStyle {
    self.messageInputViewStyle = messageInputViewStyle;
}

- (void)setupMessageTableStyle:(NSDictionary *)messageTableStyle {
    self.messageTableStyle = messageTableStyle;
}

@end
