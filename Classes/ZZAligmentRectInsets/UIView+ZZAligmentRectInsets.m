//
//  UIView+ZZAligmentRectInsets.m
//  Demo
//
//  Created by PZZ on 2018/1/19.
//  Copyright © 2018年 Phil. All rights reserved.
//

#import "UIView+ZZAligmentRectInsets.h"

#import <objc/runtime.h>

@implementation UIView (AligmentRectInsets)
@dynamic zzAlignmentRectInsetsBlock;

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class cls = [self class];
        SEL originalSelector = @selector(alignmentRectInsets);
        SEL swizzledSelector = @selector(ZZ_AlignmentRectInsets);
        
        Method originalMethod = class_getInstanceMethod(cls, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(cls, swizzledSelector);
        
        BOOL didAddMethod = class_addMethod(cls, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        if (didAddMethod) {
            class_replaceMethod(cls, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        }
        else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
}

- (UIEdgeInsets)ZZ_AlignmentRectInsets
{
    if (self.zzAlignmentRectInsetsBlock) {
        return self.zzAlignmentRectInsetsBlock();
    }
    else {
        return UIEdgeInsetsMake(0, 0, 0, 0);
    }
}

- (void)setZzAlignmentRectInsetsBlock:(ZZAlignmentRectInsets)zzAlignmentRectInsetsBlock
{
    objc_setAssociatedObject(self, @"ZZAlignmentRectInsets", zzAlignmentRectInsetsBlock, OBJC_ASSOCIATION_COPY);
}

- (ZZAlignmentRectInsets)zzAlignmentRectInsetsBlock
{
    return objc_getAssociatedObject(self, @"ZZAlignmentRectInsets");
}

@end
