//
//  TTUtil.h
//  TutorTalk
//
//  Created by ThoamsTan on 16/8/11.
//  Copyright © 2016年 TutorABC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTUtil : NSObject
/**
 *  秒数转字符串
 *
 *  @param second 秒数
 *
 *  @return 转换结果
 */
+ (NSString *)timeFormatter:(NSInteger)sec;
@end
