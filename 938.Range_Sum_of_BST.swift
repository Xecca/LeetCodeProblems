//v
//https://leetcode.com/problems/range-sum-of-bst/
//Runtime: 560 ms, faster than 42.61% of Swift online submissions for Range Sum of BST.
//Memory Usage: 23.2 MB, less than 6.67% of Swift online submissions for Range Sum of BST.
//----------------------------------------------------
//Given the root node of a binary search tree, return the sum of values of all nodes with value between L and R (inclusive).
//
//The binary search tree is guaranteed to have unique values.
//----------------------------------------------------

func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
    var newRoot = root
    var valArr: [Int] = []

    preorder(root, &valArr, L, R)

    return valArr.reduce(0, +)
}

func preorder(_ root: TreeNode?, _ valArr: inout [Int], _ L: Int, _ R: Int) {
    if let val = root?.val {
        if val >= L && val <= R {
            valArr.append(val)
        }
        preorder(root?.left, &valArr, L, R)
        preorder(root?.right, &valArr, L, R)
    }
}



