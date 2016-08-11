//
//  TTUtil.m
//  TutorTalk
//
//  Created by ThoamsTan on 16/8/11.
//  Copyright © 2016年 TutorABC. All rights reserved.
//

#import "TTUtil.h"

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
@end
