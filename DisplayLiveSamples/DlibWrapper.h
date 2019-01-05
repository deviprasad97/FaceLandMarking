//
//  DlibWrapper.h
//  C++_iOS Camera
//
//  Created by Devi Prasad Tripathy on 04.01.2019.
//  Copyright © 2019 Devi Prasad Tripathy. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <CoreMedia/CoreMedia.h>

@interface DlibWrapper : NSObject

- (instancetype)init;
- (void)doWorkOnSampleBuffer:(CMSampleBufferRef)sampleBuffer inRects:(NSArray<NSValue *> *)rects;
- (void)prepare;

@end
