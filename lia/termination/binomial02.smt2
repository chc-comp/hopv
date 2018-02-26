(set-info :origin "Verification conditions for the caml program
  
  let rec bot _ = bot ()
  let fail _ = assert false
  
     let rec bin_1030 bin_without_checking_1089 x_DO_NOT_CARE_1091 x_DO_NOT_CARE_1092 x_DO_NOT_CARE_1093 n_1031 prev_set_flag_bin_1076 s_prev_bin_n_1074 s_prev_bin_k_1075 k_1032 =
       let u = if prev_set_flag_bin_1076 then
                if ((0 * 1) + (1 * s_prev_bin_n_1074)) + (-s_prev_bin_k_1075) >
                   ((0 * 1) + (1 * n_1031)) + (-k_1032) &&
                   ((0 * 1) + (1 * n_1031)) + (-k_1032) >= 0 then
                  ()
                else
                  let u_3940 = fail ()
                  in
                    bot()
               else () in
              bin_without_checking_1089 x_DO_NOT_CARE_1091 x_DO_NOT_CARE_1092
                x_DO_NOT_CARE_1093 n_1031 prev_set_flag_bin_1076
                s_prev_bin_n_1074 s_prev_bin_k_1075 k_1032
  
     let rec bin_without_checking_1089 x_DO_NOT_CARE_1095 x_DO_NOT_CARE_1096 x_DO_NOT_CARE_1097 n_1031 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 k_1032 =
       let set_flag_bin_1077 = true
       in
       let s_bin_k_1073 = k_1032
       in
       let s_bin_n_1072 = n_1031
       in
         if n_1031 = 0 then
           1
         else
           if k_1032 <= 0 || k_1032 >= n_1031 then
             1
           else
             bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 (n_1031 - 1) set_flag_bin_1077 s_bin_n_1072
               s_bin_k_1073 (k_1032 - 1)
             +
             bin_1030 bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 (n_1031 - 1)
               set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 k_1032
  
     let main_1033 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 u_1034 n_1035 k_1036 =
         if n_1035 >= 0 && k_1036 >= 0 then
           bin_without_checking_1089 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073
             n_1035 set_flag_bin_1077 s_bin_n_1072 s_bin_k_1073 k_1036
         else
           0
  
  let main =
       main_1033 false 0 0 ()
")

(set-logic HORN)

(declare-fun |main_1033$unknown:38|
  ( Int Int Int Int Int Int Int ) Bool
)

(declare-fun |main_1033$unknown:37|
  ( Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:30|
  ( Int ) Bool
)

(declare-fun |bin_1030$unknown:18|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |fail$unknown:31|
  ( Int Int ) Bool
)

(declare-fun |bot$unknown:29|
  ( Int Int ) Bool
)

(declare-fun |bin_1030$unknown:17|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_1030$unknown:9|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_1030$unknown:8|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:27|
  ( Int Int Int Int Int Int Int Int Int ) Bool
)

(declare-fun |bin_without_checking_1089$unknown:26|
  ( Int Int Int Int Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:15| Int) (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) (|bin_without_checking_1089| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:8| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|) true true true true true true true )
      (|bin_without_checking_1089$unknown:26| |$V-reftype:15| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:39| Int) (|$V-reftype:41| Int) (|$V-reftype:43| Int) (|$V-reftype:45| Int) (|$V-reftype:47| Int) (|$V-reftype:49| Int) (|$V-reftype:51| Int) (|$V-reftype:52| Int) (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) (|bin_without_checking_1089| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:27| |$V-reftype:52| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:8| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|) true true true true true true true )
      (|bin_1030$unknown:9| |$V-reftype:52| |$V-reftype:51| |$V-reftype:49| |$V-reftype:47| |$V-reftype:45| |$V-reftype:43| |$V-reftype:41| |$V-reftype:39| |bin_without_checking_1089|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:104| Int) (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (= |$V-reftype:104| |$knormal:17|) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|bin_1030$unknown:9| |$knormal:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|bin_1030$unknown:18| |$V-reftype:104| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:101| Int) (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:17| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (= |$V-reftype:101| |$knormal:17|) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:9| |$knormal:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|bin_1030$unknown:18| |$V-reftype:101| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:106| Int) (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (= |$V-reftype:106| |$knormal:17|) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:9| |$knormal:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|bin_1030$unknown:18| |$V-reftype:106| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:37| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bot$unknown:29| |$knormal:37| |$knormal:36|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|bin_1030$unknown:8| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:36| Int) (|$knormal:38| Int) (|$knormal:39| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= |$knormal:36| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|fail$unknown:31| |$knormal:39| |$knormal:38|) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (= |$alpha-13:u| 1) (not (= 0 |$knormal:35|)) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|bin_1030$unknown:8| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) (|$knormal:18| Int) (|$knormal:19| Int) (|$knormal:20| Int) (|$knormal:21| Int) (|$knormal:22| Int) (|$knormal:23| Int) (|$knormal:24| Int) (|$knormal:25| Int) (|$knormal:26| Int) (|$knormal:27| Int) (|$knormal:28| Int) (|$knormal:29| Int) (|$knormal:30| Int) (|$knormal:31| Int) (|$knormal:32| Int) (|$knormal:33| Int) (|$knormal:34| Int) (|$knormal:35| Int) (|$knormal:38| Int) )
    (=>
      ( and (= |$knormal:38| 1) (= (not (= 0 |$knormal:35|)) (and (not (= 0 |$knormal:28|)) (not (= 0 |$knormal:34|)))) (= (not (= 0 |$knormal:34|)) (>= |$knormal:33| 0)) (= |$knormal:33| (+ |$knormal:31| |$knormal:32|)) (= |$knormal:32| (- |$alpha-11:k_1032|)) (= |$knormal:31| (+ |$knormal:29| |$knormal:30|)) (= |$knormal:30| |$alpha-7:n_1031|) (= |$knormal:29| 0) (= (not (= 0 |$knormal:28|)) (> |$knormal:22| |$knormal:27|)) (= |$knormal:27| (+ |$knormal:25| |$knormal:26|)) (= |$knormal:26| (- |$alpha-11:k_1032|)) (= |$knormal:25| (+ |$knormal:23| |$knormal:24|)) (= |$knormal:24| |$alpha-7:n_1031|) (= |$knormal:23| 0) (= |$knormal:22| (+ |$knormal:20| |$knormal:21|)) (= |$knormal:21| (- |$alpha-10:s_prev_bin_k_1075|)) (= |$knormal:20| (+ |$knormal:18| |$knormal:19|)) (= |$knormal:19| |$alpha-9:s_prev_bin_n_1074|) (= |$knormal:18| 0) (not (not (= 0 |$knormal:35|))) (not (= 0 |$alpha-8:prev_set_flag_bin_1076|)) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|fail$unknown:30| |$knormal:38|)
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:s_prev_bin_k_1075| Int) (|$alpha-11:k_1032| Int) (|$alpha-13:u| Int) (|$alpha-4:x_DO_NOT_CARE_1091| Int) (|$alpha-5:x_DO_NOT_CARE_1092| Int) (|$alpha-6:x_DO_NOT_CARE_1093| Int) (|$alpha-7:n_1031| Int) (|$alpha-8:prev_set_flag_bin_1076| Int) (|$alpha-9:s_prev_bin_n_1074| Int) )
    (=>
      ( and (= |$alpha-13:u| 1) (not (not (= 0 |$alpha-8:prev_set_flag_bin_1076|))) (|bin_1030$unknown:17| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|) true true true true true true true )
      (|bin_1030$unknown:8| |$alpha-11:k_1032| |$alpha-10:s_prev_bin_k_1075| |$alpha-9:s_prev_bin_n_1074| |$alpha-8:prev_set_flag_bin_1076| |$alpha-7:n_1031| |$alpha-6:x_DO_NOT_CARE_1093| |$alpha-5:x_DO_NOT_CARE_1092| |$alpha-4:x_DO_NOT_CARE_1091|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:117| Int) (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) (|$knormal:79| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (= |$V-reftype:117| (+ |$knormal:60| |$knormal:79|)) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true (|bin_1030$unknown:18| |$knormal:79| |$alpha-21:k_1032| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:69| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) )
      (|bin_without_checking_1089$unknown:27| |$V-reftype:117| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) (|$knormal:60| Int) (|$knormal:69| Int) )
    (=>
      ( and (= |$knormal:69| (- |$alpha-17:n_1031| 1)) (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:27| |$knormal:60| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      (|bin_1030$unknown:17| |$alpha-21:k_1032| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:69| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:109| Int) (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (= |$V-reftype:109| 1) (not (= 0 |$knormal:40|)) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      (|bin_without_checking_1089$unknown:27| |$V-reftype:109| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:113| Int) (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (= |$V-reftype:113| 1) (not (not (= 0 |$knormal:40|))) (not (= 0 |$knormal:43|)) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      (|bin_without_checking_1089$unknown:27| |$V-reftype:113| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|)
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) )
    (=>
      ( and (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) )
    (=>
      ( and (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) )
    (=>
      ( and (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) )
    (=>
      ( and (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) )
    (=>
      ( and (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) )
    (=>
      ( and (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) )
    (=>
      ( and (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-14:x_DO_NOT_CARE_1095| Int) (|$alpha-15:x_DO_NOT_CARE_1096| Int) (|$alpha-16:x_DO_NOT_CARE_1097| Int) (|$alpha-17:n_1031| Int) (|$alpha-18:set_flag_bin_1077| Int) (|$alpha-19:s_bin_n_1072| Int) (|$alpha-20:s_bin_k_1073| Int) (|$alpha-21:k_1032| Int) (|$alpha-22:set_flag_bin_1077| Int) (|$knormal:40| Int) (|$knormal:41| Int) (|$knormal:42| Int) (|$knormal:43| Int) (|$knormal:49| Int) (|$knormal:58| Int) )
    (=>
      ( and (= |$knormal:58| (- |$alpha-21:k_1032| 1)) (= |$knormal:49| (- |$alpha-17:n_1031| 1)) (= (not (= 0 |$knormal:43|)) (or (not (= 0 |$knormal:41|)) (not (= 0 |$knormal:42|)))) (= (not (= 0 |$knormal:42|)) (>= |$alpha-21:k_1032| |$alpha-17:n_1031|)) (= (not (= 0 |$knormal:41|)) (<= |$alpha-21:k_1032| 0)) (= (not (= 0 |$knormal:40|)) (= |$alpha-17:n_1031| 0)) (= |$alpha-22:set_flag_bin_1077| 1) (not (not (= 0 |$knormal:43|))) (not (not (= 0 |$knormal:40|))) (|bin_without_checking_1089$unknown:26| |$alpha-21:k_1032| |$alpha-20:s_bin_k_1073| |$alpha-19:s_bin_n_1072| |$alpha-18:set_flag_bin_1077| |$alpha-17:n_1031| |$alpha-16:x_DO_NOT_CARE_1097| |$alpha-15:x_DO_NOT_CARE_1096| |$alpha-14:x_DO_NOT_CARE_1095|) true true true true true true true )
      (|bin_without_checking_1089$unknown:26| |$knormal:58| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077| |$knormal:49| |$alpha-21:k_1032| |$alpha-17:n_1031| |$alpha-22:set_flag_bin_1077|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:121| Int) (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) (|$knormal:98| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:83|)) (and (not (= 0 |$knormal:81|)) (not (= 0 |$knormal:82|)))) (= (not (= 0 |$knormal:82|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:81|)) (>= |$alpha-29:n_1035| 0)) (= |$V-reftype:121| |$knormal:98|) (not (= 0 |$knormal:83|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true (|bin_without_checking_1089$unknown:27| |$knormal:98| |$alpha-30:k_1036| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077| |$alpha-29:n_1035| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) )
      (|main_1033$unknown:38| |$V-reftype:121| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:80| Int) (|$alpha-1:$$tmp::1| Int) (|$knormal:1| Int) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:1| 1) (= |$V-reftype:80| |$knormal:2|) (|bot$unknown:29| |$knormal:2| |$knormal:1|) true )
      (|bot$unknown:29| |$V-reftype:80| |$alpha-1:$$tmp::1|)
    )
  )
)
(assert
  (forall ( (|$knormal:1| Int) )
    (=>
      ( and (= |$knormal:1| 1) true )
      true
    )
  )
)
(assert
  (not (exists ( (|$alpha-2:$$tmp::2| Int) )
    ( and (|fail$unknown:30| |$alpha-2:$$tmp::2|) )
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:83|)) (and (not (= 0 |$knormal:81|)) (not (= 0 |$knormal:82|)))) (= (not (= 0 |$knormal:82|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:81|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:83|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:83|)) (and (not (= 0 |$knormal:81|)) (not (= 0 |$knormal:82|)))) (= (not (= 0 |$knormal:82|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:81|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:83|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:83|)) (and (not (= 0 |$knormal:81|)) (not (= 0 |$knormal:82|)))) (= (not (= 0 |$knormal:82|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:81|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:83|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:83|)) (and (not (= 0 |$knormal:81|)) (not (= 0 |$knormal:82|)))) (= (not (= 0 |$knormal:82|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:81|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:83|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:83|)) (and (not (= 0 |$knormal:81|)) (not (= 0 |$knormal:82|)))) (= (not (= 0 |$knormal:82|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:81|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:83|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:83|)) (and (not (= 0 |$knormal:81|)) (not (= 0 |$knormal:82|)))) (= (not (= 0 |$knormal:82|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:81|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:83|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:83|)) (and (not (= 0 |$knormal:81|)) (not (= 0 |$knormal:82|)))) (= (not (= 0 |$knormal:82|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:81|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:83|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:83|)) (and (not (= 0 |$knormal:81|)) (not (= 0 |$knormal:82|)))) (= (not (= 0 |$knormal:82|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:81|)) (>= |$alpha-29:n_1035| 0)) (not (= 0 |$knormal:83|)) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      (|bin_without_checking_1089$unknown:26| |$alpha-30:k_1036| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077| |$alpha-29:n_1035| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:122| Int) (|$alpha-25:set_flag_bin_1077| Int) (|$alpha-26:s_bin_n_1072| Int) (|$alpha-27:s_bin_k_1073| Int) (|$alpha-28:u_1034| Int) (|$alpha-29:n_1035| Int) (|$alpha-30:k_1036| Int) (|$knormal:81| Int) (|$knormal:82| Int) (|$knormal:83| Int) )
    (=>
      ( and (= (not (= 0 |$knormal:83|)) (and (not (= 0 |$knormal:81|)) (not (= 0 |$knormal:82|)))) (= (not (= 0 |$knormal:82|)) (>= |$alpha-30:k_1036| 0)) (= (not (= 0 |$knormal:81|)) (>= |$alpha-29:n_1035| 0)) (= |$V-reftype:122| 0) (not (not (= 0 |$knormal:83|))) (|main_1033$unknown:37| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|) true true true true true )
      (|main_1033$unknown:38| |$V-reftype:122| |$alpha-30:k_1036| |$alpha-29:n_1035| |$alpha-28:u_1034| |$alpha-27:s_bin_k_1073| |$alpha-26:s_bin_n_1072| |$alpha-25:set_flag_bin_1077|)
    )
  )
)
(assert
  (forall ( (|$knormal:101| Int) (|$knormal:104| Int) (|$knormal:107| Int) (|$knormal:99| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:107| 1) (= |$knormal:104| 0) (= |$knormal:101| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:101| Int) (|$knormal:104| Int) (|$knormal:107| Int) (|$knormal:99| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:107| 1) (= |$knormal:104| 0) (= |$knormal:101| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:101| Int) (|$knormal:104| Int) (|$knormal:107| Int) (|$knormal:99| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:107| 1) (= |$knormal:104| 0) (= |$knormal:101| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:101| Int) (|$knormal:104| Int) (|$knormal:107| Int) (|$knormal:99| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:107| 1) (= |$knormal:104| 0) (= |$knormal:101| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$knormal:101| Int) (|$knormal:104| Int) (|$knormal:107| Int) (|$knormal:99| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:107| 1) (= |$knormal:104| 0) (= |$knormal:101| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:63| Int) (|$V-reftype:75| Int) (|$knormal:101| Int) (|$knormal:104| Int) (|$knormal:107| Int) (|$knormal:99| Int) )
    (=>
      ( and (= |$knormal:99| 0) (= |$knormal:107| 1) (= |$knormal:104| 0) (= |$knormal:101| 0) )
      (|main_1033$unknown:37| |$V-reftype:63| |$V-reftype:75| |$knormal:107| |$knormal:104| |$knormal:101| |$knormal:99|)
    )
  )
)
(check-sat)

(exit)

