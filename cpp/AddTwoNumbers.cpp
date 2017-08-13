#include <iostream>
using namespace std;

struct ListNode
{
    int val;
    ListNode *next;

    explicit ListNode(int x) : val(x), next(nullptr) {}
};

ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
    int carry = 0, tmp = 0;
    auto *first = new ListNode(-1);
    auto *current = first;
    while(l1 != nullptr || l2 != nullptr)
    {
        int a = l1 != nullptr ? l1->val : 0;
        int b = l2 != nullptr ? l2->val : 0;
        tmp = a + b + carry;
        carry = (tmp > 9) ? 1 : 0;
        current->next = new ListNode(tmp % 10);
        current = current->next;
        l1 = l1 != nullptr ? l1->next : nullptr;
        l2 = l2 != nullptr ? l2->next : nullptr;
    }
    current->next = carry == 1 ? new ListNode(1) : current->next;
    return first->next;
}

int main() {
    auto* l1 = new ListNode(2);
    auto* l2 = new ListNode(4);
    auto* l3 = new ListNode(3);
    l1->next = l2;
    l2->next = l3;

    auto* l4 = new ListNode(5);
    auto* l5 = new ListNode(6);
    auto* l6 = new ListNode(4);
    l4->next = l5;
    l5->next = l6;
    return 0;
}
