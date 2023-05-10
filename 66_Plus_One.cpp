class Solution {
public:
    vector<int> plusOne(vector<int>& digits) {
        int n = digits.size();
        
        // Add 1 to the least significant digit
        digits[n-1] += 1;
        
        // Propagate the carry
        for(int i=n-1; i>0 && digits[i]==10; i--) {
            digits[i] = 0;
            digits[i-1] += 1;
        }
        
        // Check if there is still a carry
        if(digits[0] == 10) {
            digits[0] = 0;
            digits.insert(digits.begin(), 1);
        }
        
        return digits;
    }
};
