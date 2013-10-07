//
//  RJCell.m
//  TableViewController
//
//  Created by Kevin Muldoon & Tyler Fox on 10/5/13.
//  Copyright (c) 2013 RobotJackalope. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "RJTableViewCell.h"

@interface RJTableViewCell ()

@property (nonatomic, assign) BOOL didSetupConstraints;

@end

@implementation RJTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        self.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        
        self.iconView = [[UIImageView alloc] initWithFrame:CGRectZero];
        [self.iconView setTranslatesAutoresizingMaskIntoConstraints:NO];

        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        [self.titleLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.titleLabel setLineBreakMode:NSLineBreakByTruncatingTail];
        [self.titleLabel setNumberOfLines:1];
        [self.titleLabel setMinimumScaleFactor:0.8f];
        [self.titleLabel setAdjustsFontSizeToFitWidth:YES];
        [self.titleLabel setTextAlignment:NSTextAlignmentLeft];
        [self.titleLabel setTextColor:[UIColor nexgenPaperWhiteColor]];
        [self.titleLabel setBackgroundColor:[UIColor clearColor]];
        
        self.bodyLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        [self.bodyLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.bodyLabel setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
        [self.bodyLabel setLineBreakMode:NSLineBreakByTruncatingTail];
        [self.bodyLabel setNumberOfLines:0];
        [self.bodyLabel setTextAlignment:NSTextAlignmentLeft];
        [self.bodyLabel setTextColor:[UIColor nexgenPaperWhiteColor]];
        [self.bodyLabel setBackgroundColor:[UIColor clearColor]];
        
        self.addressLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        [self.addressLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.addressLabel setLineBreakMode:NSLineBreakByTruncatingTail];
        [self.addressLabel setNumberOfLines:1];
        [self.addressLabel setMinimumScaleFactor:0.8f];
        [self.addressLabel setAdjustsFontSizeToFitWidth:YES];
        [self.addressLabel setTextAlignment:NSTextAlignmentLeft];
        [self.addressLabel setTextColor:[UIColor nexgenCyanColor]];
        [self.addressLabel setBackgroundColor:[UIColor clearColor]];

        [self.contentView addSubview:self.iconView];
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.bodyLabel];
        [self.contentView addSubview:self.addressLabel];
        
        [self updateFonts];
    }
    
    return self;
}

- (void)updateConstraints {
    [super updateConstraints];
    
    if (self.didSetupConstraints) return;
    
    [self.contentView addConstraint:[NSLayoutConstraint
                                     constraintWithItem:self.iconView
                                     attribute:NSLayoutAttributeLeading
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:self.contentView
                                     attribute:NSLayoutAttributeLeading
                                     multiplier:1.0f
                                     constant:(kLabelHorizontalInsets / 2)]];
    
    [self.contentView addConstraint:[NSLayoutConstraint
                                     constraintWithItem:self.iconView
                                     attribute:NSLayoutAttributeTop
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:self.contentView
                                     attribute:NSLayoutAttributeTop
                                     multiplier:1.0f
                                     constant:(kLabelHorizontalInsets / 2)]];
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    [self.contentView addConstraint:[NSLayoutConstraint
                                     constraintWithItem:self.titleLabel
                                     attribute:NSLayoutAttributeLeading
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:self.contentView
                                     attribute:NSLayoutAttributeLeading
                                     multiplier:1.0f
                                     constant:70.0f]];
    
    [self.contentView addConstraint:[NSLayoutConstraint
                                     constraintWithItem:self.titleLabel
                                     attribute:NSLayoutAttributeTop
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:self.contentView
                                     attribute:NSLayoutAttributeTop
                                     multiplier:1.0f
                                     constant:(kLabelHorizontalInsets / 4)]];
    
    [self.contentView addConstraint:[NSLayoutConstraint
                                     constraintWithItem:self.titleLabel
                                     attribute:NSLayoutAttributeTrailing
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:self.contentView
                                     attribute:NSLayoutAttributeTrailing
                                     multiplier:1.0f
                                     constant:-20.0f]];
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    [self.contentView  addConstraint:[NSLayoutConstraint
                                      constraintWithItem:self.bodyLabel
                                      attribute:NSLayoutAttributeLeading
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:self.contentView
                                      attribute:NSLayoutAttributeLeading
                                      multiplier:1.0f
                                      constant:70.0f]];
    
    [self.contentView  addConstraint:[NSLayoutConstraint
                                      constraintWithItem:self.bodyLabel
                                      attribute:NSLayoutAttributeTop
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:self.titleLabel
                                      attribute:NSLayoutAttributeBottom
                                      multiplier:1.0f
                                      constant:0.0f]];
    
    [self.contentView  addConstraint:[NSLayoutConstraint
                                      constraintWithItem:self.bodyLabel
                                      attribute:NSLayoutAttributeTrailing
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:self.contentView
                                      attribute:NSLayoutAttributeTrailing
                                      multiplier:1.0f
                                      constant:-20.0f]];
    
    [self.contentView  addConstraint:[NSLayoutConstraint
                                      constraintWithItem:self.bodyLabel
                                      attribute:NSLayoutAttributeBottom
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:self.contentView
                                      attribute:NSLayoutAttributeBottom
                                      multiplier:1.0f
                                      constant:-22.0f]];
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    [self.contentView addConstraint:[NSLayoutConstraint
                                     constraintWithItem:self.addressLabel
                                     attribute:NSLayoutAttributeLeading
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:self.contentView
                                     attribute:NSLayoutAttributeLeading
                                     multiplier:1.0f
                                     constant:70.0f]];
    
    [self.contentView addConstraint:[NSLayoutConstraint
                                     constraintWithItem:self.addressLabel
                                     attribute:NSLayoutAttributeBottom
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:self.contentView
                                     attribute:NSLayoutAttributeBottom
                                     multiplier:1.0f
                                     constant:-6.0]];
    
    [self.contentView addConstraint:[NSLayoutConstraint
                                     constraintWithItem:self.addressLabel
                                     attribute:NSLayoutAttributeTrailing
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:self.contentView
                                     attribute:NSLayoutAttributeTrailing
                                     multiplier:1.0f
                                     constant:-10.0]];
    
//    [self.contentView addConstraint:[NSLayoutConstraint
//                                     constraintWithItem:self.addressLabel
//                                     attribute:NSLayoutAttributeTrailing
//                                     relatedBy:NSLayoutRelationEqual
//                                     toItem:self.contentView
//                                     attribute:NSLayoutAttributeTrailing
//                                     multiplier:1.0f
//                                     constant:-20.0f]];
//    
//    [self.contentView  addConstraint:[NSLayoutConstraint
//                                      constraintWithItem:self.bodyLabel
//                                      attribute:NSLayoutAttributeBottom
//                                      relatedBy:NSLayoutRelationEqual
//                                      toItem:self.addressLabel
//                                      attribute:NSLayoutAttributeTop
//                                      multiplier:1.0f
//                                      constant:0.0f]];

    self.didSetupConstraints = YES;
}

- (void)updateFonts
{
    
    self.titleLabel.font = [UIFont boldSystemFontOfSize:18.0f];
    self.bodyLabel.font = [UIFont systemFontOfSize:14.0f];
    self.addressLabel.font = [UIFont systemFontOfSize:14.0f];

//
//    self.titleLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
//    self.bodyLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption2];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
