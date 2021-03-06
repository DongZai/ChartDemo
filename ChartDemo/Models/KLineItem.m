//
//  KLineItem.m
//  ChartDemo
//
//  Created by xdliu on 2016/12/2.
//  Copyright © 2016年 yoyo. All rights reserved.
//

#import "KLineItem.h"

@implementation KLineItem

- (id)copyWithZone:(NSZone *)zone {
    KLineItem *copyItem = [[self class] allocWithZone:zone];
    copyItem.close = self.close;
    copyItem.open = self.open;
    copyItem.high = self.high;
    copyItem.low = self.low;
    copyItem.date = self.date;
    copyItem.rise_and_fall_rate = self.rise_and_fall_rate;
    copyItem.rise_and_fall_value = self.rise_and_fall_value;
    
    return copyItem;
}

- (NSString *)description {
    NSString *des = [[NSString alloc] initWithFormat:@"open    high    low    close    vol      date:  %@,  %@  %@  %@  %@  %@", self.open, self.high, self.low, self.close, self.vol, self.date];
    return des;
}

@end
