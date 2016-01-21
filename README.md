# ZCImageAnimaitonController
一个简单易用的动画类, 可以用作开机动画与平常动画展示,能够类似使用imageView动画时造成cup与内存暴增的情况 具体使用请参考Dome

接口介绍：

//动画展示视图View，如果不设置默认为UIWindow，Level为UIWindowLevelAlert
@property(nonatomic, assign)UIView * animationView;

//动画是否正在执行
@property(nonatomic, assign)BOOL isAnimation;

@property(nonatomic, assign)UIWindowLevel animationWindowLevel;

//第一帧动画停留延时，默认0.5秒
@property(nonatomic, assign)NSTimeInterval firstImageDelay;

//最后一帧动画停留延时 默认0.5秒
@property(nonatomic, assign)NSTimeInterval lastImageDelay;

//动画超时时间 默认5秒, 设置为0为永不超时
@property(nonatomic, assign)NSTimeInterval animationTimeoutInterval;

//动画执行时间 默认2秒
@property(nonatomic, assign)NSTimeInterval animationDuration;

//动画执行次数 默认1次,设置为0为无线循环
@property(nonatomic, assign)CGFloat animationRepeatCount;

//动画图片数量
@property(nonatomic, assign)NSInteger animationImageCount;

//第一帧延时图片名
@property(nonatomic, strong)NSString * firstImageNamed;

//第一帧延时图片
@property(nonatomic, strong)UIImage * firstImage;

//自动设置动画第一帧为首帧延时图片，默认为YES
@property(nonatomic, assign)BOOL autoSetFirstImage;

//最后一帧延时图片名
@property(nonatomic, strong)NSString * lastImageNamed;

//最后一帧延时图片
@property(nonatomic, strong)UIImage * lastImage;

//自动设置动画最后一帧为末帧延时图片，默认为YES
@property(nonatomic, assign)BOOL autoSetLastImage;

//返回值为每一帧动画的图片名（imageNamed）会被循环调用(类似tableView的cellForRowAtIndexPath方法),如果实现了animationImageAtIndex的block，则此方法不会执行
@property (nonatomic , copy) NSString *(^animationImageNamedAtIndex)(NSInteger index);

//返回值为每一帧动画的图片（UIImage）会被循环调用(类似tableView的cellForRowAtIndexPath方法)
@property (nonatomic , copy) UIImage *(^animationImageAtIndex)(NSInteger index);

//动画视图即将消失（动画已执行完成，进入最后一帧延时阶段）
@property (nonatomic , copy) void (^animationViewWillDisappear) (void);

//开始动画&动画执行完成的回调block
- (void)beginImageAnimationWithDidFinishBlock:(animationFinishBlcok)finishBlcok;

//停止动画
- (void)stopImageAnimation;

//对比当前设备屏幕尺寸
- (BOOL)comparSizeIsEqual:(CGSize)size;

//iOS9后window必须添加rootViewController 设置当前window.rootViewController是否可以旋转（默认NO）
@property(nonatomic, assign)BOOL shouldAutorotate;

//iOS9后window必须添加rootViewController 设置当前window.rootViewController是旋转方默认（UIInterfaceOrientationMaskPortrait）
@property(nonatomic, assign)UIInterfaceOrientationMask supportedInterfaceOrientations;

