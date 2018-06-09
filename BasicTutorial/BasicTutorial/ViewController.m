//
//  ViewController.m
//  BasicTutorial
//
//  Created by Jack Wong on 2018/06/09.
//  Copyright © 2018 Jack Wong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

/// グローバル変数を定義する
/// 変数は容器みたい、タイプにより、物を入れる。
@property NSString* globalStr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///グローバル変数を定義する
    self.globalStr = @"I am Global Variable";
    /*
     効いてない
     localString = NSLog(@"%@", localStr)
     */
    [self newFunc];
}

/// メゾット作成
- (void)newFunc {
    
    ///ローカル変数を作成
    ///ローカル変数はnewFuncの中にしか使わない
    NSString * localStr = @"I am Local String";
    NSLog(@"%@",localStr);
    localStr = @"local Change !";
    NSLog(@"%@", localStr);
    ///グローバル変数はこっちも使える
    NSLog(@"%@", self.globalStr);
    
}

@end
