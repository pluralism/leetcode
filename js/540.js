function singleNonDuplicate(nums) {
    if(nums.length === 1) { return nums[0]; }

    let start = 0;
    let end = nums.length - 1;

    let mid = Math.floor((start + end) / 2);
    
    while(start < end) {
        let pivot = nums[mid];

        if(mid % 2 === 0) {
            if(nums[mid + 1] !== pivot) {
                end = mid;
            } else {
                start = mid + 1;
            }
        }

        if(mid % 2 === 1) {
            if(nums[mid - 1] === pivot) {
                start = mid;

                if(mid + 1 === nums.length - 1) {
                    return nums[mid + 1];
                }
            } else {
                end = mid - 1;
            }
        }
    
        if(nums[mid - 1] !== pivot && nums[mid + 1] !== pivot) {
            return pivot;
        }

        mid = Math.floor((start + end) / 2);
    }

    return nums[mid];
}