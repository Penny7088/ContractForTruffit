// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Buying{
    //地址类型有两种形式，他们大致相同
    //1、address 保存一个20字节的值（以太坊地址的大小）
    //2、address payable 可支付地址，与 address 相同，不过有成员函数 transfer 和 send 。
    //   这种区别背后的思想是 address payable 可以接受以太币的地址，而一个普通的 address 则不能。
    address[16] public buyers;
    //声明方法buy  参数 uint 整数型  返回值 uint
    //int / uint ：分别表示有符号和无符号的不同位数的整型变量。 支持关键字 uint8 到 uint256 
    //（无符号，从 8 位到 256 位）以及 int8 到 int256，以 8 位为步长递增。 uint 和 int 分别是 uint256 和 int256 的别名。
    function buy(uint prodId) public returns (uint) {
        //require：最常用的检测关键字，用来验证输入参数和调用函数结果是否合法
        //校验参数
        require(prodId >= 0 && prodId <= 100);
        buyers[prodId] = msg.sender;

        return prodId;
    }

    //获取address 
    function getBuyers() public view returns (address[16] memory){
        return buyers;
    }

}