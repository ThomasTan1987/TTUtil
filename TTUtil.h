//
//  TTUtil.h
//  TutorTalk
//
//  Created by ThoamsTan on 16/8/11.
//  Copyright © 2016年 TutorABC. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Status:NSObject
@property(nonatomic,assign)BOOL result;
@property(nonatomic,copy)NSString *message;
@end
@interface TTUtil : NSObject
/**
 *  秒数转字符串
 *
 *  @param second 秒数
 *
 *  @return 转换结果
 */
+ (NSString *)timeFormatter:(NSInteger)sec;
/**
 *  检验是否符合我们对手机号码的验证
 *
 *  @param phoneNumber 用户输入的手机号
 *
 *  @return 是否符合我们的要求
 */
+ (Status *)checkPhoneNumber:(NSString*)phoneNumber;
/**
 *  密码规则
 *
 *  @param password 用户输入的密码
 *
 *  @return 是否符合我们的要求
 */
+ (Status *)checkPassword:(NSString*)password;
@end
