open OUnit2
open Product

let tests = "test suite" >::: [
    "empty" >:: (fun _ -> assert_equal 1 (product ([])));
    "t1" >:: (fun _ -> assert_equal 6 (product (1::2::3::[])));
    "t2" >:: (fun _ -> assert_equal 24 (product (1::2::3::4::[])));
]

let _ = run_test_tt_main tests