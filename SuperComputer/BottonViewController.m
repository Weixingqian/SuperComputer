//
//  BottonViewController.m
//  SuperComputer
//
//  Created by youku on 13-7-30.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "BottonViewController.h"

#define make_buttonOne [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 60, 45)] 

#define make_buttonTwo [[UIButton alloc]initWithFrame:CGRectMake(10, 60, 60, 45)]

#define make_buttonThree [[UIButton alloc]initWithFrame:CGRectMake(10, 120, 60, 45)]

#define make_buttonFour [[UIButton alloc]initWithFrame:CGRectMake(10, 180, 60, 45)]

#define make_buttonFive [[UIButton alloc]initWithFrame:CGRectMake(10, 245, 60, 45)]



@interface BottonViewController ()

@end

@implementation BottonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    showNumberView =[[UILabel alloc]init];
    showNumberView.frame=CGRectMake(0, 0, 320, 80);
    showNumberView.text=@"0";
    showNumberView.textAlignment=UITextAlignmentRight;
    showNumberView.font=[UIFont systemFontOfSize:40];
    
    UIImageView *wholeScreen;
    wholeScreen = [[UIImageView alloc] init];
    wholeScreen.frame=CGRectMake(0, 0, 320, 480);
    wholeScreen.userInteractionEnabled = YES;
    
    UILabel *showUpLabel;
    showUpLabel =[[UILabel alloc]init];
    showUpLabel.frame=CGRectMake(0, 0, 320, 80);
    showUpLabel.backgroundColor=[UIColor whiteColor];
    showUpLabel.userInteractionEnabled=YES;
    
    
    UIImageView *buttonBGView;
    buttonBGView =[[UIImageView alloc]init];            
    buttonBGView.frame=CGRectMake(0, 90, 320, 370);
    buttonBGView.backgroundColor=[UIColor darkGrayColor];
    buttonBGView.userInteractionEnabled=YES;
    
    UIButton *mcButton;
    mcButton = make_buttonOne;
    mcButton.frame = CGRectOffset(mcButton.frame, 10, 10);
    mcButton.backgroundColor=[UIColor lightGrayColor];
    [mcButton setTitle:@"mc" forState:UIControlStateNormal];
    mcButton.showsTouchWhenHighlighted=YES;

    
    UIButton *mUpButton;
    mUpButton=make_buttonOne;
    mUpButton.frame=CGRectOffset(mUpButton.frame, 90, 10);
    mUpButton.backgroundColor=[UIColor lightGrayColor];
    [mUpButton setTitle:@"m+" forState:UIControlStateNormal];
    [mUpButton setTitle:@"m+" forState:UIControlStateHighlighted];
    mUpButton.showsTouchWhenHighlighted=YES;
    
    UIButton *mDownButton;
    mDownButton=make_buttonOne;
    mDownButton.frame=CGRectOffset(mDownButton.frame, 170, 10);
    mDownButton.backgroundColor=[UIColor lightGrayColor];                        
    [mDownButton setTitle:@"m-" forState:UIControlStateNormal];
    [mDownButton setTitle:@"m-" forState:UIControlStateHighlighted];
    mDownButton.showsTouchWhenHighlighted = YES;
    
    UIButton *mrButton;
    mrButton=make_buttonOne;
    mrButton.frame=CGRectOffset(mrButton.frame, 250, 10);
    mrButton.backgroundColor=[UIColor lightGrayColor];
    [mrButton setTitle:@"mr" forState:UIControlStateNormal];
    [mrButton setTitle:@"mr" forState:UIControlStateHighlighted];
    mrButton.showsTouchWhenHighlighted = YES;
    
    UIButton *cButton;
    cButton=make_buttonTwo;
    cButton.frame=CGRectOffset(cButton.frame, 0, 10);
    cButton.backgroundColor=[UIColor brownColor];                               // C键
    [cButton setTitle:@"c" forState:UIControlStateNormal];
    [cButton addTarget:self action:@selector(cFunction:) forControlEvents:UIControlEventTouchUpInside];
    cButton.showsTouchWhenHighlighted = YES;
    
    UIButton *aAcButton;
    aAcButton=make_buttonTwo;
    aAcButton.frame=CGRectOffset(aAcButton.frame, 80, 10);
    aAcButton.backgroundColor=[UIColor brownColor];
    [aAcButton setTitle:@"+/-" forState:UIControlStateNormal];
    aAcButton.showsTouchWhenHighlighted = YES;
    
    UIButton *divisionButton;
    divisionButton=make_buttonTwo;
    divisionButton.frame=CGRectOffset(divisionButton.frame, 160, 10);             
    divisionButton.backgroundColor=[UIColor brownColor];
    [divisionButton setTitle:@"÷" forState:UIControlStateNormal];
    divisionButton.showsTouchWhenHighlighted = YES;
    
    UIButton *mulButton;
    mulButton=make_buttonTwo;
    mulButton.frame=CGRectOffset(mulButton.frame, 240, 10);
    mulButton.backgroundColor=[UIColor brownColor];
    [mulButton setTitle:@"x" forState:UIControlStateNormal];
    mulButton.showsTouchWhenHighlighted = YES;
    
    UIButton *sevenButton;
    sevenButton=make_buttonThree;
    sevenButton.frame=CGRectOffset(sevenButton.frame, 0, 10);                    
    sevenButton.backgroundColor=[UIColor blackColor];
    sevenButton.showsTouchWhenHighlighted=YES;
    [sevenButton setTitle:@"7" forState:UIControlStateNormal];
    [sevenButton addTarget:self action:@selector(sevenNumber:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *eightButton;
    eightButton=make_buttonThree;
    eightButton.frame=CGRectOffset(eightButton.frame, 80, 10);
    eightButton.backgroundColor=[UIColor blackColor];
    [eightButton setTitle:@"8" forState:UIControlStateNormal];
    [eightButton addTarget:self action:@selector(eightNumber:) forControlEvents:UIControlEventTouchUpInside];
    eightButton.showsTouchWhenHighlighted = YES;
    
    UIButton *nineButton;
    nineButton=make_buttonThree;
    nineButton.frame=CGRectOffset(nineButton.frame, 160, 10);
    nineButton.backgroundColor=[UIColor blackColor];
    [nineButton setTitle:@"9" forState:UIControlStateNormal];
    [nineButton addTarget:self action:@selector(nineNumber:) forControlEvents:UIControlEventTouchUpInside];
    nineButton.showsTouchWhenHighlighted = YES;
    
    UIButton *cutButton;
    cutButton=make_buttonThree;
    cutButton.frame=CGRectOffset(cutButton.frame, 240, 10);
    cutButton.backgroundColor=[UIColor brownColor];
    [cutButton setTitle:@"-" forState:UIControlStateNormal];
    cutButton.showsTouchWhenHighlighted = YES;
    
    UIButton *fourButton;
    fourButton=make_buttonFour;
    fourButton.frame=CGRectOffset(fourButton.frame, 0, 10);
    fourButton.backgroundColor=[UIColor blackColor];
    [fourButton setTitle:@"4" forState:UIControlStateNormal];
    [fourButton addTarget:self action:@selector(fourNumber:) forControlEvents:UIControlEventTouchUpInside];
    fourButton.showsTouchWhenHighlighted = YES;
    
    UIButton *fiveButton;
    fiveButton=make_buttonFour;
    fiveButton.frame=CGRectOffset(fiveButton.frame, 80, 10);
    fiveButton.backgroundColor=[UIColor blackColor];
    [fiveButton setTitle:@"5" forState:UIControlStateNormal];
    [fiveButton addTarget:self action:@selector(fiveNumber:) forControlEvents:UIControlEventTouchUpInside];
    fiveButton.showsTouchWhenHighlighted = YES;
    
    UIButton *sixButton;
    sixButton=make_buttonFour;
    sixButton.frame=CGRectOffset(sixButton.frame, 160, 10);
    sixButton.backgroundColor=[UIColor blackColor];
    [sixButton setTitle:@"6" forState:UIControlStateNormal];
    [sixButton addTarget:self action:@selector(sixNumber:) forControlEvents:UIControlEventTouchUpInside];
    sixButton.showsTouchWhenHighlighted = YES;
    
    UIButton *addButton;
    addButton=make_buttonFour;
    addButton.frame=CGRectOffset(addButton.frame, 240, 10);
    addButton.backgroundColor=[UIColor brownColor];
    [addButton setTitle:@"+" forState:UIControlStateNormal];
    [addButton addTarget:self action:@selector(addNumFunc:) forControlEvents:UIControlEventTouchUpInside];
    addButton.showsTouchWhenHighlighted = YES;
    
    UIButton *oneButton;
    oneButton=make_buttonFive;
    oneButton.frame=CGRectOffset(oneButton.frame, 0, 10);
    oneButton.backgroundColor=[UIColor blackColor];
    [oneButton setTitle:@"1" forState:UIControlStateNormal];
    [oneButton addTarget:self action:@selector(oneNumber:) forControlEvents:UIControlEventTouchUpInside];
    oneButton.showsTouchWhenHighlighted = YES;
    
    UIButton *twoButton;
    twoButton=make_buttonFive;
    twoButton.frame=CGRectOffset(twoButton.frame, 80, 10);
    twoButton.backgroundColor=[UIColor blackColor];
    [twoButton setTitle:@"2" forState:UIControlStateNormal];
    [twoButton addTarget:self action:@selector(twoNumber:) forControlEvents:UIControlEventTouchUpInside];
    twoButton.showsTouchWhenHighlighted = YES;
    
    UIButton *threeButton;
    threeButton=make_buttonFive;
    threeButton.frame=CGRectOffset(threeButton.frame, 160, 10);  
    threeButton.backgroundColor=[UIColor blackColor];
    [threeButton setTitle:@"3" forState:UIControlStateNormal];
    [threeButton addTarget:self action:@selector(threeNumber:) forControlEvents:UIControlEventTouchUpInside];
    threeButton.showsTouchWhenHighlighted = YES;
    
    UIButton *zeroButton;
    zeroButton =[[UIButton alloc]init];
    zeroButton.frame=CGRectMake(10, 315, 140, 45);
    zeroButton.backgroundColor=[UIColor blackColor];
    [zeroButton setTitle:@"0" forState:UIControlStateNormal];
    [zeroButton addTarget:self action:@selector(zeroNumber:) forControlEvents:UIControlEventTouchUpInside];
    zeroButton.showsTouchWhenHighlighted = YES;
    
    UIButton *pointButton;
    pointButton =[[UIButton alloc]init];
    pointButton.frame=CGRectMake(170, 315, 60, 45);
    pointButton.backgroundColor=[UIColor blackColor];
    [pointButton setTitle:@"." forState:UIControlStateNormal];
    [pointButton addTarget:self action:@selector(pointInt:) forControlEvents:UIControlEventTouchUpInside];
    pointButton.showsTouchWhenHighlighted = YES;
    
    UIButton *eqButton; 
    eqButton =[[UIButton alloc]init];
    eqButton.frame=CGRectMake(250, 255, 60, 105);
    eqButton.backgroundColor=[UIColor orangeColor];
    [eqButton setTitle:@"=" forState:UIControlStateNormal];
    [eqButton addTarget:self action:@selector(eqFunction:) forControlEvents:UIControlEventTouchUpInside];
    eqButton.showsTouchWhenHighlighted = YES;
    
    [showUpLabel  addSubview:showNumberView];
    [buttonBGView addSubview:pointButton];
    [buttonBGView addSubview:eqButton];              
    [buttonBGView addSubview:pointButton];
    [buttonBGView addSubview:zeroButton];
    [buttonBGView addSubview:threeButton];
    [buttonBGView addSubview:twoButton];
    [buttonBGView addSubview:oneButton];
    [buttonBGView addSubview:addButton];
    [buttonBGView addSubview:sixButton];
    [buttonBGView addSubview:fiveButton];
    [buttonBGView addSubview:fourButton];
    [buttonBGView addSubview:cutButton];
    [buttonBGView addSubview:nineButton];
    [buttonBGView addSubview:eightButton];
    [buttonBGView addSubview:sevenButton];
    [buttonBGView addSubview:mulButton];
    [buttonBGView addSubview:divisionButton];
    [buttonBGView addSubview:aAcButton];
    [buttonBGView addSubview:cButton];
    [wholeScreen addSubview:buttonBGView];
    [wholeScreen addSubview:showUpLabel];
    [buttonBGView addSubview:mcButton];
    [buttonBGView addSubview:mUpButton];
    [buttonBGView addSubview:mDownButton];
    [buttonBGView addSubview:mrButton];
    [self.view addSubview:wholeScreen];
    
    [self resetAllTraget];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
- (NSString*)formatStringFromFloat:(float)value
{
    return [self discardZero:[NSString stringWithFormat:@"%f", value]];
}
- (NSString*)discardZero:(NSString*)number
{
    if ([number rangeOfString:@"."].location != NSNotFound) {
        // 若存在小数点，则需要丢弃字符串末尾的‘0’
        int i = [number length] - 1;
        // 从字符串末尾开始，找到第一不为‘0’的字符的位置
        for (; (i >= 0) &&([number characterAtIndex:i] == '0'); i--) {}
        // 若第一个不为‘0’的字符是‘.’则需要丢弃
        if ([number characterAtIndex:i] == '.') i--;
        // 只取第i个字符以及它之前的部分
		number = [number substringToIndex:(i+1)];
    }
    return number;
}
- (void)doClear:(NSString*)number
{
    showNumberView.text=number;
    inputCount = 1;
    needClear = NO;
    pointExist = NO;
}
- (void)doNormal:(NSString*)number
{
    if ([showNumberView.text isEqualToString:@"0"]) {
        showNumberView.text = number;
        inputCount = 1;
        
    }
    else if (inputCount >= 9){ }
    else {
        NSString *numberEqual=showNumberView.text;
        showNumberView.text=[numberEqual stringByAppendingString:number];
        inputCount ++;
        
    }
    needRestAll = NO;
}
- (void)resetAllTraget
{
    sumNumber = 0;
    inputCount = 0;
    excuteTarget = NoneOperator;
    pointExist = NO;
    needResetSum = YES;
    needRestAll = NO;
    needClear = NO;
}
-(void)eqFunction:(id)sender
{
    if (excuteTarget != NoneOperator) {
        tmpNumber = showNumberView.text.floatValue;
    }
    switch (excuteTarget) {
        case AddOperator:
            sumNumber = sumNumber + tmpNumber;
            showNumberView.text=[self formatStringFromFloat:sumNumber];
            break;
            
        default:
            break;
    }
    needClear=YES;
    inputCount=0;
    needResetSum = YES;
}
-(void)addNumFunc:(id)sender
{
    if (needResetSum == YES) {
        sumNumber = 0;
        needResetSum = NO;
        tmpNumber = showNumberView.text.floatValue;
    }
    sumNumber = sumNumber + tmpNumber;
    showNumberView.text = showNumberView.text=[self formatStringFromFloat:sumNumber];
    excuteTarget = AddOperator;
    needClear = YES;
    inputCount = 0;
    
}
-(void)cFunction:(id)sender
{
    if (needRestAll == NO) {
        [self doClear:@"0"];
        needRestAll = YES;
    }
    else {
        [self resetAllTraget];
    }
}
-(void)pointInt:(id)sender
{
    if (pointExist==YES) {
        // 不让再加小数点
    } else if (needClear) {
        [self doClear:@"0."];
    }
    else {
        // 正常处理
        NSString *numberEqual=showNumberView.text;
        showNumberView.text=[numberEqual stringByAppendingFormat:@"."];
        pointExist = YES;
    }
}
-(void)zeroNumber:(id)sender
{
    if (needClear == YES) {
        [self doClear:@"0"];
    }
    else {
        [self doNormal:@"0"];
    }
}

-(void)oneNumber:(id)sender
{
    if (needClear == YES) {
        [self doClear:@"1"];
    }
    else {
        [self doNormal:@"1"];
    }

}

-(void)twoNumber:(id)sender
{
    if (needClear == YES) {
        [self doClear:@"2"];
    }
    else {
        [self doNormal:@"2"];
    }
}
-(void)threeNumber:(id)sender
{
    if (needClear == YES) {
        [self doClear:@"3"];
    }
    else {
        [self doNormal:@"3"];
    }
}
-(void)fourNumber:(id)sender
{
    if (needClear == YES) {
        [self doClear:@"4"];
    }
    else {
        [self doNormal:@"4"];
    }
}
-(void)fiveNumber:(id)sender
{
    if (needClear == YES) {
        [self doClear:@"5"];
    }
    else {
        [self doNormal:@"5"];
    }
}
-(void)sixNumber:(id)sender
{
    if (needClear == YES) {
        [self doClear:@"6"];
    }
    else {
        [self doNormal:@"6"];
    }
}
-(void)sevenNumber:(id)sender
{
    if (needClear == YES) {
        [self doClear:@"7"];
    }
    else {
        [self doNormal:@"7"];
    }
}
-(void)eightNumber:(id)sender
{
    if (needClear == YES) {
        [self doClear:@"8"];
    }
    else {
        [self doNormal:@"8"];
    }
}
-(void)nineNumber:(id)sender
{
    if (needClear == YES) {
        [self doClear:@"9"];
    }
    else {
        [self doNormal:@"9"];
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
