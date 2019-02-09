#include <iostream>
#include <vector>
using std::cout;
using std::endl;
using std::vector;
using std::min;

int minSwap(vector<int>& a, vector<int>& b) {
    vector<int> k(a.size(), INT_MAX);
    vector<int> s(a.size(), INT_MAX);

    k[0] = 0;
    s[0] = 1;

    for(auto i = 1; i < a.size(); i++)
    {
        if(a[i] > a[i - 1] && b[i] > b[i - 1])
        {
            k[i] = k[i - 1];
            s[i] = s[i - 1] + 1;
        }

        if(a[i] > b[i - 1] && b[i] > a[i - 1])
        {
            k[i] = min(k[i], s[i - 1]);
            s[i] = min(s[i], k[i - 1] + 1);
        }
    }

    return min(k.back(), s.back());
}

int main() {
    vector<int> a { 0, 4, 4, 5, 9 };
    vector<int> b { 0, 1, 6, 8, 10 };
    cout << minSwap(a, b) << endl;
    return 0;
}