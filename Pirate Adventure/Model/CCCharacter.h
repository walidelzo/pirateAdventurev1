//
//  CCCharacter.h
//  Pirate Adventure
//
//  Created by walidelzo on 6/21/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCArmor.h"
#import "CCWeapon.h"
@interface CCCharacter : NSObject
@property (strong,nonatomic) CCArmor *armor;
@property(strong,nonatomic) CCWeapon *weapon;
@property(nonatomic) int health;
@property(nonatomic) int damage;
@end
