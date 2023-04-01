class Solution {
public:
    bool isPowerOfThree(int n) {
        int ans =1;
        for(int i =0; i<=30; i++){
            if (ans == n){
                return true;
            }
            if(ans<INT_MAX/3){
                ans =ans*3;
            }
        }
        return false;
    }
};

////Another Approach
class Solution {
public:
    bool isPowerOfThree(int n) {
        if(n == 0) return false;
        while(n % 3 == 0) {
            n /= 3;
        }
        return n == 1;
    }
};
