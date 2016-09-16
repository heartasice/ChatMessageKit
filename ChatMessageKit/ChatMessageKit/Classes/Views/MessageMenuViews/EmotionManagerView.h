
#import <UIKit/UIKit.h>
#import "EmotionManager.h"
#import "YYImage.h"

#define kEmotionPerRowItemCount (kIsiPad ? 10 : 4)
#define kEmotionPageControlHeight 38
#define kEmotionSectionBarHeight 36

@protocol EmotionManagerViewDelegate <NSObject>

@optional
/**
 *  第三方gif表情被点击的回调事件
 *
 *  @param image   被点击的gif表情Model
 *  @param indexPath 被点击的位置
 */
- (void)didSelecteEmotion:(YYImage *)image atIndexPath:(NSIndexPath *)indexPath;

@end

@protocol EmotionManagerViewDataSource <NSObject>

@required
/**
 *  通过数据源获取统一管理一类表情的回调方法
 *
 *  @param column 列数
 *
 *  @return 返回统一管理表情的Model对象
 */
- (EmotionManager *)emotionManagerForColumn:(NSInteger)column;

/**
 *  通过数据源获取一系列的统一管理表情的Model数组
 *
 *  @return 返回包含统一管理表情Model元素的数组
 */
- (NSArray *)emotionManagersAtManager;

/**
 *  通过数据源获取总共有多少类gif表情
 *
 *  @return 返回总数
 */
- (NSInteger)numberOfEmotionManagers;

@end

@interface EmotionManagerView : UIView

@property (nonatomic, weak) id <EmotionManagerViewDelegate> delegate;

@property (nonatomic, weak) id <EmotionManagerViewDataSource> dataSource;

/**
 *  是否显示表情商店的按钮
 */
@property (nonatomic, assign) BOOL isShowEmotionStoreButton; // default is YES

/**
 *  根据数据源刷新UI布局和数据
 */
- (void)reloadData;


@end
