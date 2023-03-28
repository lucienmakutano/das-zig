const std = @import("std");
const testing = std.testing;

pub fn maximum_sum(nums: []i32) i32 {
    var sum: i32 = 0;

    for (nums) |num| {
        const temp_sum = sum + num;
        sum = max(temp_sum, num);
    }

    if (sum < 0) {
        return 0;
    }
    return sum;
}

fn max(a: i32, b: i32) i32 {
    if (a > b) {
        return a;
    } else {
        return b;
    }
}

test "maximum sub array sum" {
    var nums_1 = [6]i32{ 34, -50, 42, 14, -5, 86 };
    var nums_2 = [4]i32{ -5, -1, -8, -9 };
    try testing.expect(maximum_sum(&nums_1) == 137);
    try testing.expect(maximum_sum(&nums_2) == 0);
}

test "basic max function" {
    try testing.expect(max(1, 3) == 3);
    try testing.expect(max(4, 3) == 4);
}
