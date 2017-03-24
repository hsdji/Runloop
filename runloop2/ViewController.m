//
//  ViewController.m
//  runloop2
//
//  Created by ekhome on 17/3/24.
//  Copyright © 2017年 xiaofei. All rights reserved.
//

#import "ViewController.h"
#import "CustomerTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView *tableView;
@property (nonatomic,strong)NSMutableArray *tasksArray;
@property (nonatomic,assign)NSUInteger maxTasksQueue;
@property (nonatomic,strong)NSTimer *timer;
@end

static NSString *identifity = @"CustomerCell";


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self observrRunLoop];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.0000001 target:self selector:@selector(test) userInfo:nil repeats:YES];
    self.maxTasksQueue = 60;
    self.tasksArray = [NSMutableArray new];
}

-(void)test{
    
}

-(void)viewWillAppear:(BOOL)animated
{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    self.tableView.delegate= self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[CustomerTableViewCell class] forCellReuseIdentifier:identifity];
    self.tableView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
}




#pragma -mark ====================UItableViewDelegate====================
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 44;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 100;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [UIView new];
    view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44);
    view.backgroundColor = [UIColor orangeColor];
    UILabel *lab = [UILabel new];
    lab.frame = view.frame;
    lab.font = [UIFont systemFontOfSize:14.0];
    lab.numberOfLines = 2;
    lab.text = @"Test load Large Large image Usering RunLoop & normary Style";
    [view addSubview:lab];
    return view;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomerTableViewCell *cell = [[CustomerTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifity];
//    把任务添加到数组
   
    [self.tasksArray addObject:^{
    cell.CustomerimageView1.hidden = NO;
    }];
    
    [self.tasksArray addObject:^{
        cell.CustomerimageView2.hidden = NO;
    }];
    
    [self.tasksArray addObject:^{
        cell.CustomerimageView3.hidden = NO;
    }];
    
    [self.tasksArray addObject:^{
        cell.CustomerimageView4.hidden = NO;
    }];
    
    [self.tasksArray addObject:^{
        cell.CustomerimageView5.hidden = NO;
    }];
    
    [self.tasksArray addObject:^{
        cell.CustomerimageView6.hidden = NO;
    }];
    
    [self.tasksArray addObject:^{
        cell.CustomerimageView7.hidden = NO;
    }];
    
    [self.tasksArray addObject:^{
        cell.CustomerimageView8.hidden = NO;
    }];
    
    [self.tasksArray addObject:^{
        cell.CustomerimageView9.hidden = NO;
    }];
    
    [self.tasksArray addObject:^{
        cell.CustomerimageView10.hidden = NO;
    }];
    
    if (self.tasksArray.count>self.maxTasksQueue)
    {
        [self.tasksArray removeObjectAtIndex:0];
    }
    
    

    
    
    return cell;
}
#pragma mark =================UItableView优化===================

//优化思路
//1.之前的采用分步加载
//2.分步加载步骤1.首先找到造成界面
//            2.将所有的任务放到一个任务数组中去
//            3.每一次只从这个任务数组中取出一个任务去执行





static void callBackBlock (CFRunLoopObserverRef observer, CFRunLoopActivity activity, void *info){
    ViewController *v = (__bridge ViewController *)info;
    if (v.tasksArray.count)
    {
        dispatch_block_t task = v.tasksArray[0];
        task();
        [v.tasksArray removeObjectAtIndex:0];
    }
    
    
};



-(void)addTask{
    
}



-(void)observrRunLoop{
    CFRunLoopRef runloop = CFRunLoopGetCurrent();
    CFRunLoopObserverContext    observerContext = {
        0,
        (__bridge void *)(self),
        &CFRetain,
        &CFRelease,
        NULL
    };
  CFRunLoopObserverRef observer =  CFRunLoopObserverCreate(CFAllocatorGetDefault(), kCFRunLoopBeforeWaiting, YES, 0,callBackBlock, &observerContext);
    CFRunLoopAddObserver(runloop, observer,kCFRunLoopCommonModes);
    CFRelease(observer);
}
@end
