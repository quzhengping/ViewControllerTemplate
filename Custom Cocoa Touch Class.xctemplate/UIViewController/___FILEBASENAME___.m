//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAME___ ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIBarButtonItem *leftItem;
@property (nonatomic, strong) UIBarButtonItem *rightItem;
@end

@implementation ___FILEBASENAME___


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self.view addSubview:self.tableView];
}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
}


#pragma mark tableViewDelegate and tableViewDatasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 0.01f;
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identifier = [NSString stringWithFormat:@"%ld%ld",indexPath.section,indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if(!cell){
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.backgroundColor = [UIColor clearColor];
        
    }
    return cell;
}


- (void)leftBarButtonItemClicked{
    
    
}

- (void)rightBarButtonItemClicked{
    
    
}

#pragma mark getterAndSetter

- (UITableView *)tableView{
    
    if(!_tableView){
        
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.backgroundColor = [UIColor clearColor];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}

- (UIBarButtonItem *)leftItem{
    if(!_leftItem){
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, 30, 30);
        [btn setImage:[UIImage imageNamed:@"setting"] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(leftBarButtonItemClicked) forControlEvents:UIControlEventTouchUpInside];
        _leftItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    }
    return _leftItem;
    
}

- (UIBarButtonItem *)rightItem{
    if(!_rightItem){
        
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, 30, 30);
        [btn setImage:[UIImage imageNamed:@"message"] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(rightBarButtonItemClicked) forControlEvents:UIControlEventTouchUpInside];
        _rightItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    }
    return _rightItem;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
