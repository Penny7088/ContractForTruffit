# Truffle 区块链demo
学习区块链 demo 

## 项目创建步骤 :
```shell
truffle unbox pet-shop
```
### 生成对应的项目及文件夹
> contracts/合约文件夹
> 
> migrations/部署脚本文件夹
> 
> test/ 测试脚本文件夹
> 
> truffle-config.js Truffle 配置文件

### truffle-config.js [配置选项](https://trufflesuite.com/docs/truffle/reference/configuration)  
  
-------

# 项目构建
### 执行下面命令
```shell
truffle build
```
### 异常信息如下
```shell
# 版本错误问题
project:/contracts/Buying.sol:2:1: ParserError: Source file requires different compiler version (current compiler is 0.5.16+commit.9c3226ce.Emscripten.clang - note that nightly builds are considered to be strictly less than the released version
pragma solidity ^0.8.6;
^---------------------^
,project:/contracts/Migrations.sol:2:1: ParserError: Source file requires different compiler version (current compiler is 0.5.16+commit.9c3226ce.Emscripten.clang - note that nightly builds are considered to be strictly less than the released version
pragma solidity ^0.8.6;
^---------------------^

Error: Truffle is currently using solc 0.5.16, but one or more of your contracts specify "pragma solidity ^0.8.6".
Please update your truffle config or pragma statement(s).
(See https://trufflesuite.com/docs/truffle/reference/configuration#compiler-configuration for information on
configuring Truffle to use a specific solc compiler version.)

Compilation failed. See above.
Truffle v5.4.30 (core: 5.4.30)
```

```json
// 解决办法,修改truffle-config.js 加上下面的配置文件
compilers: {
    solc: {
      version: "^0.8.6"
    }
  }
```
```shell
#执行下面命令
truffle compile
#重新执行
truffle build
```
