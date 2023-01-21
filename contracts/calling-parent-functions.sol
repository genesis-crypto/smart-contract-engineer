// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

contract GrandParent {
    event Details(string details);
    
    function getName() virtual public {
        emit Details("GrandParent.Name");
    }
}

contract Parent is GrandParent {
    function getName() virtual public override(GrandParent) {
        emit Details("Parent.Name");
        super.getName();
    }
}

contract GrandSon is GrandParent, Parent {
    function getName() public override(GrandParent, Parent) {
        emit Details("GrandSon.Name");
        super.getName();
    }

}