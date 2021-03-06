

#import "ShareMenuItem.h"

@implementation ShareMenuItem

- (instancetype)initWithNormalIconImage:(UIImage *)normalIconImage
                                  title:(NSString *)title {
    return [self initWithNormalIconImage:normalIconImage title:title titleColor:nil titleFont:nil];
}

- (instancetype)initWithNormalIconImage:(UIImage *)normalIconImage
                                  title:(NSString *)title
                             titleColor:(UIColor *)titleColor
                              titleFont:(UIFont *)titleFont {
    self = [super init];
    if (self) {
        self.normalIconImage = normalIconImage;
        self.title = title;
        self.titleColor = titleColor;
        self.titleFont = titleFont;
    }
    return self;
}

- (void)dealloc {
    self.normalIconImage = nil;
    self.title = nil;
}

@end
