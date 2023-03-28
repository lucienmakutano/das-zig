const std = @import("std");

const ms = @import("./ms/max_sum.zig");

pub fn main() !void {
    // stdout is for the actual output of your application, for example if you
    // are implementing gzip, then only the compressed bytes should be sent to
    // stdout, not any debugging messages.
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    var nums_1 = [6]i32{ 34, -50, 42, 14, -5, 86 };
    const res = ms.maximum_sum(&nums_1);

    // 137
    try stdout.print("maximum sub array: [34, -50, 42, 14, -5, 86]: {d}.\n", .{res});

    try bw.flush(); // don't forget to flush!
}
