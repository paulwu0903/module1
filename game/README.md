# Game

## Package
```
0x5d086c3588f226b9c140446e59abd9984f103ad43307d9f878199a119fb0da56
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
0x6018efdcd2e67f03b13b71d7288028521aa14db68c47d21888ec7dd8c9f52e23
```
* Config
```
0x5355bfbc32d4e5ff0a31c46aab1b10a2b1a23d0530c93e60a564a8fb91dd8d08
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
