let valid_date d m =
    if m = "Jan" || m = "Mar" || m = "May" || m = "Jul" || m = "Aug" || m = "Oct" || m = "Dec" then
        (d <= 31 && d > 0)
    else if m = "Apr" || m = "Jun" || m = "Sep" || m = "Nov" then
        (d <= 30 && d > 0)
        else if m = "Feb" then
            (d <= 28 && d > 0)
        else
            false
in 
assert (valid_date 10 "Mar");
assert (valid_date 10 "Jun");
assert (valid_date 10 "Feb");
assert (valid_date 30 "Jan");
assert (valid_date 30 "Apr");
assert (not (valid_date 30 "Feb"));
assert (valid_date 31 "May");
assert (not (valid_date 31 "Sep"));
assert (not (valid_date 31 "Feb"));