#!/usr/bin/perl
=pod
Modify 4.2.pl so you can use the subroutine on any variable by passing it as a parameter when
calling the subroutine. Apply the subroutine to two different variables (e.g. $x and $y). Print
the results of the subroutine to see if it worked.
=cut

sub absolute {
    my ($number) = @_;
    if ($number < 0) {
        return -$number;
    } else {
        return $number;
    }
}

# 定义两个变量
my $x = -5;
my $y = 10;

# 调用子程序 absolute 并传入变量
my $res_x = absolute($x);
my $res_y = absolute($y);
# 输出结果
print "Absolute value of $x is $res_x\n";
print "Absolute value of $y is $res_y\n";