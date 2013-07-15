//
//  View.m
//  Label
//
//  Created by PHILIP JACOBS on 7/14/13.
//  Copyright (c) 2013 PHILIP JACOBS. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor whiteColor];
		NSString *string = @"Hello World";
		UIFont *font = [UIFont systemFontOfSize: 32];
		CGSize size = [string sizeWithFont: font];
		//Put upper left corner of label in upper left corner of View.
		//Make label just big enough to hold the string.
		CGRect f = CGRectMake(self.bounds.origin.x, self.bounds.origin.y, size.width, size.height);
		label = [[UILabel alloc] initWithFrame: f];
		label.backgroundColor = [UIColor yellowColor];
		label.font = font;
		label.text = string;
		[self addSubview: label];
		
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
