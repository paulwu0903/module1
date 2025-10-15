# Game

## Package
```
0x9077606dbbebb2f192d16a10e5ae314713cacf5e25eebf495b78a30c6be1ea78
```

## Objects
* Random
```
0x8
```
* Clock
```
0x6
```
* UpdgradeCap
```
0xf3513bdbd044982fe13dc82d4b6f449866cab188f13db425b9a3e29af868456c
```
* Config
```
0xf27678b66bab8bd99c9d6d42507a47beec9de80efd4459e028a6b031c2b98de3
```

# Sui CLI 執行合約 Function 指令:
```shell=
sui client call --package <PackageId> --module <ModuleName> --function <FunctionName> --args (<param>)* --typeargs (<type>*) 
```

## Ex: 建立 Role 
```
sui client call --package <Package Id> --module role --function new --args <Config Object Id> <自訂角色名> <true: man, false: woman> <Clock Object Id>
```


## Ex: 打獵獲得 Weapon
```
sui client call --package <Package Id> --module wilderness --function hunt_for_weapon --args <Role Object Id> <Random Object Id>
```

## Ex: 打獵獲得 Head
```
sui client call --package <Package Id> --module wilderness --function hunt_for_head --args <Role Object Id> <Random Object Id>
```

## Ex: 打獵獲得 Chest
```
sui client call --package <Package Id> --module wilderness --function hunt_for_chest --args <Role Object Id> <Random Object Id>
```

## Ex: 打獵獲得 Legs
```
sui client call --package <Package Id> --module wilderness --function hunt_for_legs --args <Role Object Id> <Random Object Id>
```

## Ex: 打獵獲得 Shoes
```
sui client call --package <Package Id> --module wilderness --function hunt_for_shoes --args <Role Object Id> <Random Object Id>
```

## Ex: 打獵獲得 Gem
```
sui client call --package <Package Id> --module wilderness --function hunt_for_gem --args <Role Object Id> <Random Object Id>
```

## Ex: 鑲嵌寶石到 Weapon上
```
sui client call --package <Package ID> --module weapon --function add_gem --args <Weapon Object Id> <Config Object Id> <Gem Object Id>
```

## Ex: 鑲嵌寶石到 Chest 上
```
sui client call --package <Package ID> --module chest --function add_gem --args <Chest Object Id> <Config Object Id> <Gem Object Id>
```

## Ex: 鑲嵌寶石到 Head 上
```
sui client call --package <Package ID> --module head --function add_gem --args <Head Object Id> <Config Object Id> <Gem Object Id>
```

## Ex: 鑲嵌寶石到 Legs 上
```
sui client call --package <Package ID> --module legs --function add_gem --args <Legs Object Id> <Config Object Id> <Gem Object Id>
```

## Ex: 鑲嵌寶石到 Shoes 上
```
sui client call --package <Package ID> --module shoes --function add_gem --args <Shoes Object Id> <Config Object Id> <Gem Object Id>
```

## Ex: Role 穿上 Weapon
```
sui client call --package <Package Id> --module role --function fill_weapon --args <Role Object Id> <Weapon Object Id> 
```

## Ex: Role 穿上 Chest
```
sui client call --package <Package Id> --module role --function fill_chest --args <Role Object Id> <Chest Object Id> 
```

## Ex: Role 穿上 Shoes
```
sui client call --package <Package Id> --module role --function fill_shoes --args <Role Object Id> <Shoes Object Id> 
```

## Ex: Role 穿上 Head
```
sui client call --package <Package Id> --module role --function fill_head --args <Role Object Id> <Head Object Id> 
```

## Ex: Role 穿上 Legs
```
sui client call --package <Package Id> --module role --function fill_legs --args <Role Object Id> <Legs Object Id> 
```
