//
//  CustomerTableViewCell.m
//  runloop2
//
//  Created by ekhome on 17/3/24.
//  Copyright © 2017年 xiaofei. All rights reserved.
//

#import "CustomerTableViewCell.h"

@implementation CustomerTableViewCell

-(UIImageView *)CustomerimageView1
{
    if (!_CustomerimageView1)
    {
        _CustomerimageView1 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"立即用车" ofType:@"jpg"]]];
        [self addSubview:_CustomerimageView1];
        _CustomerimageView1.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width/10.0,100);
        [self addSubview:_CustomerimageView1];
    }
    return _CustomerimageView1;
}


-(UIImageView *)CustomerimageView2
{
    if (!_CustomerimageView2)
    {
        _CustomerimageView2 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"立即用车" ofType:@"jpg"]]];
        [self addSubview:_CustomerimageView2];
        _CustomerimageView2.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/10.0, 0, [UIScreen mainScreen].bounds.size.width/10.0,100);
        [self addSubview:_CustomerimageView2];
    }
    return _CustomerimageView2;
}


-(UIImageView *)CustomerimageView3
{
    if (!_CustomerimageView3)
    {
        _CustomerimageView3 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"立即用车" ofType:@"jpg"]]];
        [self addSubview:_CustomerimageView3];
        _CustomerimageView3.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/10.0*2, 0, [UIScreen mainScreen].bounds.size.width/10.0,100);
        [self addSubview:_CustomerimageView3];
    }
    return _CustomerimageView3;
}


-(UIImageView *)CustomerimageView4
{
    if (!_CustomerimageView4)
    {
        _CustomerimageView4 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"立即用车" ofType:@"jpg"]]];
        [self addSubview:_CustomerimageView4];
        _CustomerimageView4.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/10.0*3, 0, [UIScreen mainScreen].bounds.size.width/10.0,100);
        [self addSubview:_CustomerimageView4];
    }
    return _CustomerimageView4;
}
-(UIImageView *)CustomerimageView5
{
    if (!_CustomerimageView5)
    {
        _CustomerimageView5 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"立即用车" ofType:@"jpg"]]];
        [self addSubview:_CustomerimageView5];
        _CustomerimageView5.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/10.0*4, 0, [UIScreen mainScreen].bounds.size.width/10.0,100);
        [self addSubview:_CustomerimageView5];
    }
    return _CustomerimageView5;
}


-(UIImageView *)CustomerimageView6
{
    if (!_CustomerimageView6)
    {
        _CustomerimageView6 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"立即用车" ofType:@"jpg"]]];
        [self addSubview:_CustomerimageView6];
        _CustomerimageView6.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/10.0*5, 0, [UIScreen mainScreen].bounds.size.width/10.0,100);
        [self addSubview:_CustomerimageView6];
    }
    return _CustomerimageView6;
}

-(UIImageView *)CustomerimageView7
{
    if (!_CustomerimageView7)
    {
        _CustomerimageView7 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"立即用车" ofType:@"jpg"]]];
        [self addSubview:_CustomerimageView7];
        _CustomerimageView7.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/10.0*6, 0, [UIScreen mainScreen].bounds.size.width/10.0,100);
        [self addSubview:_CustomerimageView7];
    }
    return _CustomerimageView7;
}

-(UIImageView *)CustomerimageView8
{
    if (!_CustomerimageView8)
    {
        _CustomerimageView8 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"立即用车" ofType:@"jpg"]]];
        [self addSubview:_CustomerimageView8];
        _CustomerimageView8.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/10.0*7, 0, [UIScreen mainScreen].bounds.size.width/10.0,100);
        [self addSubview:_CustomerimageView8];
    }
    return _CustomerimageView8;
}

-(UIImageView *)CustomerimageView9
{
    if (!_CustomerimageView9)
    {
        _CustomerimageView9 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"立即用车" ofType:@"jpg"]]];
        [self addSubview:_CustomerimageView9];
        _CustomerimageView9.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/10.0*8, 0, [UIScreen mainScreen].bounds.size.width/10.0,100);
        [self addSubview:_CustomerimageView9];
    }
    return _CustomerimageView9;
}

-(UIImageView *)CustomerimageView10
{
    if (!_CustomerimageView10)
    {
        _CustomerimageView10 = [[UIImageView alloc] initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"立即用车" ofType:@"jpg"]]];
        [self addSubview:_CustomerimageView10];
        _CustomerimageView10.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/10.0*9, 0, [UIScreen mainScreen].bounds.size.width/10.0,100);
        [self addSubview:_CustomerimageView10];
    }
    return _CustomerimageView10;
}

@end
