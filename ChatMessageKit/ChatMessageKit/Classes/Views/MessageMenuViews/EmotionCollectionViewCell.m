

#import "EmotionCollectionViewCell.h"
#import "YYAnimatedImageView.h"
@interface EmotionCollectionViewCell ()

/**
 *  显示表情封面的控件
 */
@property (nonatomic, weak) YYAnimatedImageView *emotionImageView;

/**
 *  配置默认控件和参数
 */
- (void)setup;
@end

@implementation EmotionCollectionViewCell

#pragma setter method



#pragma mark - Life cycle

- (void)setup {
    if (!_emotionImageView) {
        YYAnimatedImageView *emotionImageView = [[YYAnimatedImageView alloc] initWithFrame:CGRectMake(0, 0, kEmotionImageViewSize, kEmotionImageViewSize)];
        emotionImageView.backgroundColor = [UIColor colorWithRed:0.000 green:0.251 blue:0.502 alpha:1.000];
        [self.contentView addSubview:emotionImageView];
        self.emotionImageView = emotionImageView;
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];

    [self setup];
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setup];
    }
    return self;
}



@end
