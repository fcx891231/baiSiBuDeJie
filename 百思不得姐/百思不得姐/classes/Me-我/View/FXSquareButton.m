//
//  FXSquareButton.m
//  百思不得姐
//
//  Created by fanxi on 16/3/21.
//  Copyright © 2016年 fanxi. All rights reserved.
//

#import "FXSquareButton.h"
#import <UIButton+WebCache.h>
#import "FXSquare.h"

@implementation FXSquareButton

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (void)awakeFromNib
{
    [self setup];
}

- (void)setup
{


    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.titleLabel.font = [UIFont systemFontOfSize:15];
    [self setBackgroundImage:[UIImage imageNamed:@"mainCellBackground"] forState:UIControlStateNormal];


}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //调整图片
    
    self.imageView.y = self.height * 0.15;
    self.imageView.width = self.width * 0.3;
    self.imageView.height = self.imageView.width;
    self.imageView.centerX = self.width * 0.5;
    
    
    //调整label
    
    self.titleLabel.x = 0;
    self.titleLabel.y = CGRectGetMaxY(self.imageView.frame);
    self.titleLabel.width = self.width;
    self.titleLabel.height = self.height - self.titleLabel.y;
  
}



- (void)setSquare:(FXSquare *)square
{
    _square = square;
    
    [self setTitle:square.name forState:UIControlStateNormal];
    [self sd_setImageWithURL:[NSURL URLWithString:square.icon] forState:UIControlStateNormal];

}

@end
