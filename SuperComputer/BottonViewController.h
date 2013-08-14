//
//  BottonViewController.h
//  SuperComputer
//
//  Created by youku on 13-7-30.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

enum {
    NoneOperator = 0,
    AddOperator = 1,
    SubOperator = 2,
    MulOperator = 3,
    DecOperator = 4
} ExcuteType;

@interface BottonViewController : UIViewController
{
    UILabel *showNumberView;
    UILabel *norNumSta;
    double sumNumber;
    double tmpNumber;
    int    inputCount;
    int    excuteTarget;
    BOOL pointExist;
    BOOL needRestAll;           // 需要重置所有变量
    BOOL needClear;             // 需要清屏
    BOOL needResetSum;          // 是否需要重置初始值，用来区分加减和乘除的初始值分别为0和1的情况，以及点完等号之后需要重置的情况
}


@end





