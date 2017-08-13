#include <iostream>
#include <map>
#include <vector>
using namespace std;

vector<int> twoSum(vector<int>& nums, int target)
{
    map<int, int> values;
    vector<int> res;
    for(int i = 0; i < nums.size(); i++)
    {
        if(values.find(target - nums[i]) != values.end())
        {
            res.push_back(values[target - nums[i]]);
            res.push_back(i);
            break;
        }
        values[nums[i]] = i;
    }
    return res;
}


int main() {
    vector<int> vals {2, 7, 11, 15};
    vector<int> vec = twoSum(vals, 9);
    return 0;
}
