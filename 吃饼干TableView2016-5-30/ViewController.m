//
//  ViewController.m
//  吃饼干TableView2016-5-30
//
//  Created by 十大大 on 16/5/30.
//  Copyright © 2016年 Y. All rights reserved.
//

#import "ViewController.h"
#import "cook.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *TableView;
@property (nonatomic,copy) NSArray *Cookies;
@end

@implementation ViewController
-(NSArray*)Cookies
{
    if (_Cookies==nil) {
        NSString *path=[[NSBundle mainBundle]pathForResource:@"cookies.plist" ofType:nil];
        NSArray *arrayDict=[NSArray arrayWithContentsOfFile:path];
        NSMutableArray *arrayModel=[NSMutableArray array];
        for (NSDictionary *Dict in arrayDict) {
            cook *model=[cook cookWithDict:Dict];
            [arrayModel addObject:model];
        }
        _Cookies=arrayModel;
    }
    return _Cookies;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.TableView.rowHeight=60;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.Cookies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    cook *model=self.Cookies[indexPath.row];
    cell.textLabel.text=model.title;
    cell.imageView.image=[UIImage imageNamed:model.number];
    cell.detailTextLabel.text=model.desc;
    return cell;
}

@end
