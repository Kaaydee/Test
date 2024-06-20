/*Hiện thực hàm maxSubArray nhận vào một vector và trả về số lượng phần tử liên tiếp và dài nhất có cùng 1 giá trị
int maxSubArray(const vector<int> & v) {
}
Ví dụ: v = {1, 1, 2, 2, 2, 4} thì giá trị trả về là 3 vì có {2, 2, 2} có giá trị giống nhau và độ dài 3 là dài nhất
*/
#include<bits/stdc++.h>
#include<vector>
using namespace std;

int maxSubArray(const vector<int> & v) {
    int current = v[0], length = 1, max = 1;
    if(v.size() == 0) return 0;
    for(int i = 0; i < v.size(); i++){
        if(v[i] == current) length += 1;
    else {
        if(max < length) max = length;
        current = v[i];
        length = 1;
    }
}
return max;
}
main(){
vector<int> nums{1, 1, 2, 2, 2, 4};
cout<<maxSubArray(nums);
}