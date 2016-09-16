
#import "EmotionCollectionViewFlowLayout.h"


#define kEmotionImageViewSize 60
#define kEmotionMinimumLineSpacing 12
@implementation EmotionCollectionViewFlowLayout

- (id)init {
    self = [super init];
    if (self) {
        self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        self.itemSize = CGSizeMake(kEmotionImageViewSize, kEmotionImageViewSize);
        int count = MDK_SCREEN_WIDTH/(kEmotionImageViewSize+kEmotionMinimumLineSpacing);
        CGFloat spacing = MDK_SCREEN_WIDTH/count - kEmotionImageViewSize;
        self.minimumLineSpacing = spacing;
        self.sectionInset = UIEdgeInsetsMake(10, spacing/2, 0, spacing/2);
        self.collectionView.alwaysBounceVertical = YES;
    }
    return self;
}

@end
