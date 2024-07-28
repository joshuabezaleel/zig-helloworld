const std = @import("std");
const cli = @import("zig-cli");

pub fn main() void {
    std.debug.print("Hello, {s}!\n", .{"World"});
}

pub fn Load(fileName: []const u8) !void {
    std.debug.print("filename is {s}\n", .{fileName});
    // return error.InvalidFormat;
}

test "load" {
    try Load("asd");
}


// var config = struct {
//     ip: []const u8 = undefined,
//     int: i32 = undefined,
//     bool: bool = false,
//     float: f64 = 0.34,
//     arg1: u64 = 0,
//     arg2: []const []const u8 = undefined,
// }{};

// fn sub3(r: *cli.AppRunner) !cli.Command {
//     return cli.Command{
//         .name = "sub3",
//         .description = cli.Description{
//             .one_line = "sub3 with positional arguments",
//         },
//         .target = cli.CommandTarget{
//             .action = cli.CommandAction{
//                 .positional_args = cli.PositionalArgs{
//                     .required = try r.mkSlice(cli.PositionalArg, &.{
//                         .{
//                             .name = "ARG1",
//                             .help = "arg1 help",
//                             .value_ref = r.mkRef(&config.arg1),
//                         },
//                     }),
//                     .optional = try r.mkSlice(cli.PositionalArg, &.{
//                         .{
//                             .name = "ARG2",
//                             .help = "multiple arg2 help",
//                             .value_ref = r.mkRef(&config.arg2),
//                         },
//                     }),
//                 },
//                 .exec = run_sub3,
//             },
//         },
//     };
// }

// fn run_sub3() !void {
//     const c = &config;
//     std.log.debug("sub3: arg1: {}", .{c.arg1});
//     for (c.arg2) |arg| {
//         std.log.debug("sub3: arg2: {s}", .{arg});
//     }
// }