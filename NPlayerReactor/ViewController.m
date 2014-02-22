//
//  ViewController.m
//  NPlayerReactor
//
//  Created by Rocky Camacho on 2/22/14.
//  Copyright (c) 2014 Rocky Camacho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *player1;
@property (weak, nonatomic) IBOutlet UIButton *player2;
@property (weak, nonatomic) IBOutlet UIButton *player3;
@property (weak, nonatomic) IBOutlet UIButton *player4;
@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Score;
@property (weak, nonatomic) IBOutlet UILabel *player3Score;
@property (weak, nonatomic) IBOutlet UILabel *player4Score;

@property int score1;
@property int score2;
@property int score3;
@property int score4;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)displayWinner {
    NSArray *scores = @[self.player1Score,self.player2Score, self.player3Score, self.player4Score];

}

- (IBAction)onPlayerOneClick:(id)sender {
    NSLog(@"Player 1 click");
    self.score1++;
    [self.player1Score setText:[NSString stringWithFormat: @"%d", self.score1]];
}

- (IBAction)onPlayerTwoClick:(id)sender {
    NSLog(@"Player 2 click");
    self.score2++;
    [self.player2Score setText:[NSString stringWithFormat: @"%d", self.score2]];

}

- (IBAction)onPlayerThreeClick:(id)sender {
    NSLog(@"Player 3 click");
    self.score3++;
    [self.player3Score setText:[NSString stringWithFormat: @"%d", self.score3]];

}

- (IBAction)onPlayerFourClick:(id)sender {
    NSLog(@"Player 4 click");
    self.score4++;
    [self.player4Score setText:[NSString stringWithFormat: @"%d", self.score4]];

}


@end
