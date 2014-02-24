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
@property (weak, nonatomic) IBOutlet UILabel *colorText;

@property int score1;
@property int score2;
@property int score3;
@property int score4;
@property int indexColor;
@property int indexText;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self changeLabel];
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
    if([self isCorrect]){
        self.score1++;
    }else{
        self.score1--;
    }
    [self.player1Score setText:[NSString stringWithFormat: @"%d", self.score1]];
}

- (IBAction)onPlayerTwoClick:(id)sender {
    NSLog(@"Player 2 click");
    if([self isCorrect]){
        self.score2++;
    }else{
        self.score2--;
    }
    [self.player2Score setText:[NSString stringWithFormat: @"%d", self.score2]];

}

- (IBAction)onPlayerThreeClick:(id)sender {
    NSLog(@"Player 3 click");
    if([self isCorrect]){
        self.score3++;
    }else{
        self.score3--;
    }
    [self.player3Score setText:[NSString stringWithFormat: @"%d", self.score3]];

}

- (IBAction)onPlayerFourClick:(id)sender {
    NSLog(@"Player 4 click");
    [self changeLabel];
    if([self isCorrect]){
        self.score4++;
    }else{
        self.score4--;
    }
    

    [self.player4Score setText:[NSString stringWithFormat: @"%d", self.score4]];

}

- (void)changeLabel{
    self.indexColor = arc4random()%3;
    self.indexText = arc4random() %3;
    
    NSArray *colorArray = [[NSArray alloc] initWithObjects:[UIColor redColor],[UIColor blueColor],[UIColor greenColor], nil ];
    NSArray *textArray = [[NSArray alloc] initWithObjects:@"Red",@"Blue",@"Green", nil];
    NSLog([NSString stringWithFormat:@"%d %d %@", self.indexColor, self.indexText, textArray[self.indexText]]);
    
    [self.colorText setText:textArray[self.indexText]];
    [self.colorText setTextColor:colorArray[self.indexColor]];
}

-(BOOL)isCorrect{
    BOOL toReturn;
    
    
    if (self.indexColor == self.indexText) {
        toReturn=YES;
    }else{
        toReturn=NO;
    }
    [self changeLabel];
    return toReturn;
}


@end
