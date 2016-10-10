//
//  TTUtil.m
//  TutorTalk
//
//  Created by ThoamsTan on 16/8/11.
//  Copyright © 2016年 TutorABC. All rights reserved.
//

#import "TTUtil.h"
@implementation Status
@end
@implementation TTUtil
/**
 *  秒数转字符串
 *
 *  @param second 秒数
 *
 *  @return 转换结果
 */
+ (NSString *)timeFormatter:(NSInteger)sec
{
    NSInteger hour = sec/(60*60);
    NSInteger minute = sec%(60*60)/60;
    NSInteger second = sec%60;
    if (hour) {
        return [NSString stringWithFormat:@"%02ld:%02ld:%02ld",(long)hour,(long)minute,(long)second];
    }else{
        return [NSString stringWithFormat:@"%02ld:%02ld",(long)minute,(long)second];
    }
    
}
+ (Status *)checkPhoneNumber:(NSString*)phoneNumber
{
    Status *status = [[Status alloc] init];
    //台湾10位，大陆11位
    if (phoneNumber.length == 10 || phoneNumber.length == 11) {
        
    } else {
        status.result = NO;
        status.message = @"手机号输入错误，请重新输入";
        return status;
    }
    //台湾0开头，大陆1开头
    if ([phoneNumber hasPrefix:@"0"] || [phoneNumber hasPrefix:@"1"]) {
        
    } else {
        status.result = NO;
        status.message = @"手机号输入错误，请重新输入";
        return status;
    }
    //仅限数字
    for (int i = 0; i < phoneNumber.length; i ++) {
        unichar c = [phoneNumber characterAtIndex:i];
        if (c > 57 || c < 48) {//ascii 48～57表示数字0~9
            status.result = NO;
            status.message = @"手机号输入错误，请重新输入";
            return status;
        }
    }
    //
    status.result = YES;
    status.message = nil;
    return status;
}
+ (Status *)checkPassword:(NSString*)password
{
    Status *status = [[Status alloc] init];
    //6~14位
    if (password.length<6 || password.length>14) {
        status.result = NO;
        status.message = @"请输入6~14位数字或字母密码";
        return status;
    }
    //仅限大小写字母、数字
    for (int i = 0; i < password.length; i ++) {
        unichar c = [password characterAtIndex:i];
        //ascii 48～57表示数字0~9
        //大写字母 65~90
        //小写字母 97~122
        if ((c < 58 && c > 47) || (c < 91 && c > 64) || (c < 123 && c > 96)) {
            
        } else {
            status.result = NO;
            status.message = @"密码包含非法字符，请输入6~14位数字或字母";
            return status;
        }
    }
    status.result = YES;
    status.message = nil;
    return status;
}
@end
