//
//  UIView+ZZAligmentRectInsets.h
//  Demo
//
//  Created by PZZ on 2018/1/19.
//  Copyright © 2018年 Phil. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIEdgeInsets(^ZZAlignmentRectInsets)();

@interface UIView (AligmentRectInsets)

/**
 实现这个Block，可以将视图间的间距算到视图的内容中
 */
@property (nonatomic, copy) ZZAlignmentRectInsets zzAlignmentRectInsetsBlock;

@end
