//
//  CCFactory.m
//  Pirate Adventure
//
//  Created by walidelzo on 6/20/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import "CCFactory.h"

@implementation CCFactory

#pragma mark  Tiles

-(NSArray *)tiles{
    
    CCTile *tile1=[[CCTile alloc]init];
    tile1.story=@"Captian ,we need a fearless leader such as yourself to undertake a voyage .you must stop the evil pirate Boss.Would you like blunted sword to get started?";
    tile1.backgroundImage =[UIImage imageNamed:@"PirateStart.jpg"];
    CCWeapon *bluntedWeapon=[[CCWeapon alloc]init];
    bluntedWeapon.name=@"blunted sword";
    bluntedWeapon.damage=7;
    tile1.weapon=bluntedWeapon;
    tile1.actionButtonName=@"Take the sword";
    //-----------------
    CCTile *tile2=[[CCTile alloc]init];
    tile2.story=@"You have come across an armory . Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage =[UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    CCArmor *steelArmor=[[CCArmor alloc]init];
    steelArmor.name=@"steel armor";
    steelArmor.health=8;
    tile2.armor=steelArmor;
    tile2.actionButtonName=@"Take the Armor";
    //------------------
    CCTile *tile3=[[CCTile alloc]init];
    tile3.story=@"A mestetious dock apears on the horizon . should we Stop and ask for directions ?";
    tile3.backgroundImage=[UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect=12;
    tile3.actionButtonName=@"stop at the dock";
    ///------------------
    NSMutableArray *firstColumn=[[NSMutableArray alloc]init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    
    CCTile *tile4=[[CCTile alloc]init];
    tile4.story=@"You have found a parrot .this can be used in your armor slot.Parrots are a great defender and are fiercly loyal to their captian!";
    tile4.backgroundImage=[UIImage imageNamed: @"PirateParrot.jpg"];
    CCArmor *parrotArmor=[[CCArmor alloc]init];
    parrotArmor.name=@"parrot";
    parrotArmor.health=20;
    tile4.actionButtonName=@"Adopt to parrot";
    
    CCTile *tile5=[[CCTile alloc]init];
    tile5.story=@"You have stumbed up on cache of weapons.would you like to upgrade to the pistol? ";
    tile5.backgroundImage=[UIImage imageNamed:@"PirateWeapons.jpeg"];
    CCWeapon *pistolWeapon=[[CCWeapon alloc]init];
    pistolWeapon.name=@"pistol";
    pistolWeapon.damage=17;
    tile5.actionButtonName=@"Use The Pistol";
    
    CCTile *tile6=[[CCTile alloc]init];
    tile6.story=@"you have been captured by pirates and are ordered to walk the plank";
    tile6.backgroundImage=[UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect=-22;
    tile6.actionButtonName=@"show no fear";
    
    NSMutableArray *secondColumn=[[NSMutableArray alloc]init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    
    CCTile *tile7=[[CCTile alloc]init];
    tile7.story=@"You have sighted a pirate battle off the coast .Should we intervene";
    tile7.backgroundImage=[UIImage imageNamed:@"PirateShipBattle.jpeg" ];
    tile7.healthEffect=8;
    tile7.actionButtonName=@"fight those scum";
    
    CCTile *tile8=[[CCTile alloc]init];
    tile8.story=@"The legend of the deep . the mightly kraken appears!";
    tile8.backgroundImage=[UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect=-46;
    tile8.actionButtonName=@"Abondon ship";
    
    CCTile *tile9=[[CCTile alloc]init];
    tile9.story=@"you have stumbled upon a hidden cave of pirate treasure ";
    tile9.backgroundImage=[UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect=20;
    tile9.actionButtonName=@"Take the treasure";
    
    NSMutableArray *thirdColumn=[[NSMutableArray alloc]init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    
    
    CCTile *tile10=[[CCTile alloc]init];
    tile10.story=@"A group of Pirates attempt to board your ship.";
    tile10.backgroundImage=[UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect=-15;
    tile10.actionButtonName=@"repel the invaders";
    CCTile *tile11=[[CCTile alloc]init];
    tile11.story=@"In the deep of the sea many things live and many things can be found .will the forture bring help or ruin?";
    tile11.backgroundImage=[UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect=-7;
    tile11.actionButtonName=@"swim deeper";
    CCTile *tile12=[[CCTile alloc]init];
    tile12.story=@"Your final faceoff with the fearsome pirate boss!";
    tile12.backgroundImage=[UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect=-15;
    tile12.actionButtonName=@"Fight";
    NSMutableArray *fourthColmn=[[NSMutableArray alloc]init];
    [fourthColmn addObject:tile10];
    [fourthColmn addObject:tile11];
    [fourthColmn addObject:tile12];
    
   
    NSArray *tiles =[[NSArray alloc]initWithObjects:firstColumn,secondColumn,thirdColumn,fourthColmn, nil];
    return tiles;
}


#pragma  mark  Character

-(CCCharacter *)charcter{
    CCCharacter *character=[[CCCharacter alloc ]init];
    character.health=100;
    CCArmor *armor=[[CCArmor alloc]init];
    armor.name=@"Cloak";
    armor.health=5;
    character.armor=armor;
    CCWeapon *weapon=[[CCWeapon alloc]init];
    weapon.name=@"fist";
    weapon.damage=10;
    character.weapon=weapon;
    
    return character;
}
#pragma mark  Boss

-(CCBoss *)boss{
    CCBoss* boss=[[CCBoss alloc]init];
    boss.health=65;
    return boss;
}

@end
