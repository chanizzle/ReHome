//
//  PetListTableViewController.m
//  ReHome
//
//  Created by JasmineChan on 2015-10-03.
//  Copyright (c) 2015 chanizzle. All rights reserved.
//

#import "PetListTableViewController.h"
#import "PetObject.h"
#import "PetTableCell.h"

@interface PetListTableViewController ()


@property NSArray *petArray;
- (IBAction)segmentedControl:(id)sender;

-(void) setupData;

@end

@implementation PetListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupData];
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:77 green:77 blue:77 alpha:1.0];
}

- (void) viewDidAppear:(BOOL)animated {
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.petArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PetTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PetCategorySelected"];
    PetObject *pets = [self.petArray objectAtIndex:indexPath.row];
    
    NSString *imageName = [pets.petName lowercaseString];
    cell.image.image = [UIImage imageNamed:imageName];
    cell.breed.text = pets.petBreed;
    cell.gender.text = pets.petGender;
    cell.location.text = pets.location;
    // Configure the cell...
    
    return cell;
}

- (IBAction)segmentedControl:(id)sender{
    
}

- (void) setupData {
    PetObject *mj = [[PetObject alloc]init];
    PetObject *dido = [[PetObject alloc]init];
    PetObject *tabby = [[PetObject alloc]init];
    
    mj.petBreed = @"Golden Retriever";
    mj.petName = @"MJ";
    mj.petGender = @"Male - 6 months";
    mj.location = @"0.1 mile";
    mj.latitude = 40.740156;
    mj.longitude = -73.993366;
    
    dido.petBreed = @"Tabby Mix";
    dido.petName = @"Dido";
    dido.petGender = @"Female - 10 months";
    dido.location = @"0.1 mile";
    
    tabby.petBreed = @"Golden Retriever";
    tabby.petName = @"Tabby";
    tabby.petGender = @"Male - 3 months";
    tabby.location = @"0.5 mile";
    
    self.petArray = @[mj,dido,tabby];
}
@end