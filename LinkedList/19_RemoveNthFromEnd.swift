//
//  19_RemoveNthFromEnd.swift
//  
//  Copyright © 2020 jojo. All rights reserved.
// 
//  Author: jojo
//  Created at: 2020/2/27
//
//  If you have any problems, please contact me:
//  MAIL:   tongzhou_ding@sui.com
//  QQ:     385317445
//  PHONE:  15622184961
//

/*:
 给定一个链表，删除链表的倒数第 n 个节点，并且返回链表的头结点。

 示例：

 给定一个链表: 1->2->3->4->5, 和 n = 2.

 当删除了倒数第二个节点后，链表变为 1->2->3->5.
 说明：

 给定的 n 保证是有效的。

 进阶：

 你能尝试使用一趟扫描实现吗？



 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation
class Solution_19 {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        guard let head = head else { return nil }
        if n == 0 { return head }
        let dummy = ListNode(-1)
        dummy.next = head
        var prev: ListNode? = dummy, curr: ListNode? = head, p2: ListNode? = head, count = n
        while p2 != nil {
            p2 = p2?.next
            if count == 0 {
                curr = curr?.next
                prev = prev?.next
            } else {
                count -= 1
            }
        }
        
        prev?.next = curr?.next
        curr?.next = nil
        
        return dummy.next
    }
}