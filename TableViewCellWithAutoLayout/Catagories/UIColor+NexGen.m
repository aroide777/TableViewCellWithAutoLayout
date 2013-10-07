//
//  UIColor+NexGen.m
//  NexGenColorScheme
//
//  Created by Kevin Muldoon on 7/14/13.
//  Copyright (c) 2013 Kevin Muldoon. All rights reserved.
//

#import "UIColor+NexGen.h"

@implementation UIColor (NexGen)

+ (UIColor *)myTableViewBackgroundColor {
    UIImage *img = [UIImage imageNamed:@"BG_Pink"];
    return [UIColor colorWithPatternImage:img];
}

+ (UIColor *)nexgenOrangeColor {
    return [UIColor colorWithRed:217.0f/255.0f green:83.0f/255.0f blue:30.0f/255.0 alpha:1.0];
}

+ (UIColor *)nexgenDarkOrangeColor {
    return [UIColor colorWithRed:156.0f/255.0f green:52.0f/255.0f blue:12.0f/255.0 alpha:1.0];
}

+ (UIColor *)nexgenVeryDarkOrangeColor {
    return [UIColor colorWithRed:104.0f/255.0f green:34.0f/255.0f blue:8.0f/255.0 alpha:1.0];
}

+ (UIColor *)nexgenRedColor {
    return [UIColor colorWithRed:188.0f/255.0f green:14.0f/255.0f blue:22.0f/255.0 alpha:1.0];
}

+ (UIColor *)nexgenPurpleColor {
    return [UIColor colorWithRed:135.0f/255.0f green:15.0f/255.0f blue:104.0f/255.0 alpha:1.0];
}

+ (UIColor *)nexgenBlueColor {
    return [UIColor colorWithRed:52.0f/255.0f green:43.0f/255.0f blue:163.0f/255.0 alpha:1.0];
}

+ (UIColor *)nexgenTealColor {
    return [UIColor colorWithRed:0.0f/255.0f green:163.0f/255.0f blue:161.0f/255.0 alpha:1.0];
}

+ (UIColor *)nexgenTanColor {
    return [UIColor colorWithRed:208.0f/255.0f green:153.0f/255.0f blue:12.0f/255.0 alpha:1.0];
}

+ (UIColor *)nexgenTanLighterOneColor {
    return [UIColor colorWithRed:220.0f/255.0f green:181.0f/255.0f blue:72.0f/255.0 alpha:1.0];
}

+ (UIColor *)nexgenTanLighterTwoColor {
    return [UIColor colorWithRed:232.0f/255.0f green:206.0f/255.0f blue:133.0f/255.0 alpha:1.0];
}

+ (UIColor *)nexgenGreenColor {
    return [UIColor colorWithRed:139.0f/255.0f green:170.0f/255.0f blue:28.0f/255.0 alpha:1.0];
}

+ (UIColor *)nexgenLightSlateColor {
    return [UIColor colorWithRed:80.0f/255.0f green:80.0f/255.0f blue:80.0f/255.0f alpha:1.0f];
}

+ (UIColor *)nexgenMediumSlateColor {
    return [UIColor colorWithRed:60.0f/255.0f green:60.0f/255.0f blue:60.0f/255.0f alpha:1.0f];

}

+ (UIColor *)nexgenDarkSlateColor {
    return [UIColor colorWithRed:35.0f/255.0f green:35.0f/255.0f blue:35.0f/255.0f alpha:1.0f];

}

+ (UIColor *)nexgenPaperWhiteColor {
    return [UIColor colorWithRed:225.0f/255.0f green:225.0f/255.0f blue:225.0f/255.0f alpha:1.0f];
}

+ (UIColor *)nexgenCyanColor {
    return [UIColor colorWithRed:0.0f/255.0f green:174.0f/255.0f blue:239.0f/255.0f alpha:1.0f];
}


@end
