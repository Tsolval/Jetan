//
//  HelloView.m
//  Jetan
//
//  Created by Walker Adams on 2/25/12.
//  Copyright (c) 2012 Tsolval Games. All rights reserved.
//

#import "HelloView.h"

@implementation HelloView

- (id) initWithFrame:(NSRect)frameRect
{
    self=[super initWithFrame:frameRect];
    return self;
}


//- (void)drawRect:(NSRect)dirtyRect {
//    NSString *hello = @"Hello World!";
//    NSPoint point = NSMakePoint(15, 75);
//    NSMutableDictionary *font_attributes = [[NSMutableDictionary alloc]init];
//    NSFont *font = [NSFont fontWithName:@"Futura-MediumItalic" size:42];
//    [font_attributes setObject:font forKey:NSFontAttributeName];
//    [hello drawAtPoint:point withAttributes:font_attributes];
//}

- (void)drawRect:(NSRect)rect {
    CGContextRef myContext = [[NSGraphicsContext currentContext] graphicsPort];
    // Draw the Jetan Board
    for(int i = 0; i < 10; i++){
        for(int j = 0; j < 10; j++){
            if((i+j)%2>0){
                CGContextSetRGBFillColor(myContext, 1, .42, 0, 1);
                CGContextFillRect(myContext, CGRectMake(i*100, j*100, 100, 100));
            } else {
                CGContextSetRGBFillColor(myContext, 0, 0, 0, 1);
                CGContextFillRect(myContext, CGRectMake(i*100, j*100, 100, 100));
            }
        }
    }
}

@end
