//
//  HJGameViewController.h
//  HJGameSDK
//
//  Created by Eric_家骏 on 2017/12/21.
//  Copyright © 2017年 Eric_家骏. All rights reserved.
//SDK头文件

#import <UIKit/UIKit.h>


@interface HJGameViewController : UIViewController
/**添加登录成功后,欢迎回来动画框的控制器*/
-(void)addWelcomeViewWithcontrollerView:(UIViewController*)controllerView;

/**登录 登录时必调*/
-(void)loginSDK;

/**支付 支付时必调
   pay_method 支付方式（支付宝、微信、QQ钱包等
   user_id 用户ID
   order_no 订单号（可不传，不传自动生成）
   channel_id 角色ID
   channel_order_id 渠道订单ID
   role_id 游戏角色ID
   money 订单金额
   currency 货币单位（可不传）
   extension 透传参数（可不传）
   role_name 游戏角色名（可不传）
   server_id 游戏区服ID（可不传·）
   server_name 游戏区服名（可不传·）
   product_id 充值档位ID（可不传·）
   product_name 商品名称（可不传·）
   product_desc 商品描述（可不传·）
   notify_url 自定义回调地址（可不传·）
 */
//-(void)payParametersUser_id:(NSString*)user_id channel_id:(NSString*)channel_id channel_order_id:(NSString*)channel_order_id money:(NSString*)money role_id:(NSString*)role_id product_name:(NSString*)product_name product_desc:(NSString*)product_desc;

-(void)payParametersWith:(NSDictionary*)ParametersDict;
/**登录成功回调Block*/
@property (nonatomic,copy)  void(^loginSucceedCallBackBlock)(NSDictionary *loginSuccessDict);

/**支付成功回调Block*/
@property (nonatomic,copy)  void(^payBlock)(NSString *payUrl);

/**悬浮框是否显示，默认显示*/
@property(nonatomic,assign,getter=isShowFloatingWindow) BOOL showFloatingWindow;

/**是否是测试环境 YES是测试环境 NO非测试,默认正式环境*/
@property(nonatomic,assign) BOOL isTest;

/*** 是否允许横竖屏的标记，YES允许横竖屏，NO横屏  默认横屏 */
@property (nonatomic,assign)BOOL allowRotation;


@end
