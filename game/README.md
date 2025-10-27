# Game

## Package
```
0x971ab812fd74d9098c9be897a352f2dbf3fecbc103d207d0d5909f74779f9a47
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
* TreasureBox
```
0x99d639a77cdd493230829cd7ff7d3da6d593ff962cfad1d2924c4fce802421cf
```
* UpdgradeCap
```
0xaa2cb1661b27a5b9518d81939532f72a5437a782e31877ebe9a4aab2808fd7d1
```
* Config
```
0xb31d92cdb17cc07742c5dc32823a59617c62d6518bbda082ea08320aa02f25c7
```
* ArenaAdminCap
```
0x8bd6a5029fd385465798eb9d54bbe7df9cca3e3ad53429f21cbfd49716dede49
```
* Arena
```
0x042f57cb35bee5e5d120729323e7ef2481d3141e427420850966d6ea6501f227
```

# Sui CLI 執行合約 Function 指令:
```shell=
sui client call --package <PackageId> --module <ModuleName> --function <FunctionName> --args (<param>)* --typeargs (<type>*) 
```

## Ex: 建立 Role 
```
sui client call --package <Package Id> --module role --function new --args <Config Object Id> <自訂角色名> <true: man, false: woman> <Clock Object Id>
```

```rust=
entry fun new(
    config: &Config,
    name: String,
    sex: bool,
    clock: &Clock,
    ctx: &mut TxContext,
){
    ...
}
```


## Ex: 打獵(Weapon)
```
sui client call --package <Package Id> --module wilderness --function hunt_for_weapon --args <Role Object Id> <Random Object Id>
```

```rust=
entry fun hunt_for_weapon(
    _: &Role,
    rand: &Random,
    ctx: &mut TxContext
){
    ...
}
```

## Ex: 鑲嵌寶石(Weapon)
```
sui client call --package <Package ID> --module weapon --function add_gem --args <Weapon Object Id> <Config Object Id> <Gem Object Id>
```

```rust=
public fun add_gem(
    self: &mut Weapon,
    config: &Config,
    new_gem: Gem,
){
    ...
}
```

## Ex: 穿裝備(Weapon)
```
sui client call --package <Package Id> --module role --function fill_weapon --args <Role Object Id> <Weapon Object Id> 
```

```rust=
public fun fill_weapon(
    self: &mut Role, 
   new_weapon: Weapon, 
    ctx: &mut TxContext
){
    ...
}
```

## Ex: 參加競技場
```
sui client call --package <Package Id> --module arena --function list_role --args <Arena Object Id> <Role Object Id> <Clock Object Id>
```

```rust=
entry fun list_role(
    self: &mut Arena,
    role: Role,
    clock: &Clock,
    ctx: &TxContext
){
    ...
}
```

## Ex: 退出競技場
```
sui client call --package <Package Id> --module arena --function delist_role --args <Arena Object Id> <Role Object Id>
```

```rust=
entry fun delist_role(
    self: &mut Arena,
    id: ID,
){
    ...
}
```

##Ex: PK
```
sui client call --package <Package Id> --module arena --function pk --args <Arena Object Id> <Config Object Id> <Attacker Role Object Id> <Defender Role Object Id> <Random Object Id> <Clock Object Id>
```

```rust=
entry fun pk(
    self: &mut Arena,
    config: &Config,
    attacker_id: ID,
    defender_id: ID,
    rand: &Random,
    clock: &Clock,
    ctx: &mut TxContext,
){
    ...
}
```