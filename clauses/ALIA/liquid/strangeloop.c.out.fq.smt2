(set-info :origin "benchmarks generated by liquid types http://goto.ucsd.edu/~rjhala/liquid/")
(set-logic HORN)
(declare-fun k_8 (Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((tmp_main__SSA__blk_0_1 Int)
         (__cil_tmp3_main Int)
         (VV Int)
         (__cil_tmp5_main Int)
         (EREAD Int)
         (n4_main__SSA__phi_6 Int)
         (__cil_tmp4_main Int)
         (n4_main__SSA__blk_7_1 Int)
         (n4_main Int)
         (tmp_main Int)
         (EWRITE Int)
         (n4_main__SSA__blk_0_1 Int))
  (let ((a!1 (and (= tmp_main__SSA__blk_0_1 tmp_main__SSA__blk_0_1)
                  (= tmp_main tmp_main)
                  (= n4_main__SSA__blk_7_1 n4_main__SSA__blk_7_1)
                  (= n4_main__SSA__blk_0_1 n4_main__SSA__blk_0_1)
                  (= n4_main n4_main)
                  (= VV VV)
                  (= EWRITE EWRITE)
                  (= EREAD EREAD)
                  (= VV n4_main__SSA__blk_7_1)
                  (not (not (= __cil_tmp5_main 0)))
                  (not (= __cil_tmp3_main 0))
                  (= n4_main__SSA__blk_7_1 (- n4_main__SSA__phi_6 1))
                  (= n4_main__SSA__blk_0_1 tmp_main__SSA__blk_0_1)
                  (= __cil_tmp5_main (ite (= n4_main__SSA__blk_7_1 0) 1 0))
                  (= __cil_tmp4_main (ite (>= n4_main__SSA__phi_6 0) 1 0))
                  (= __cil_tmp3_main (ite (>= n4_main__SSA__blk_0_1 1) 1 0))
                  (k_8 EREAD
                       EWRITE
                       n4_main__SSA__phi_6
                       n4_main
                       n4_main__SSA__blk_0_1
                       n4_main__SSA__phi_6
                       tmp_main
                       tmp_main__SSA__blk_0_1)
                  true)))
    (=> a!1
        (k_8 EREAD
             EWRITE
             VV
             n4_main
             n4_main__SSA__blk_0_1
             n4_main__SSA__blk_7_1
             tmp_main
             tmp_main__SSA__blk_0_1)))))
(assert (forall ((tmp_main__SSA__blk_0_1 Int)
         (__cil_tmp3_main Int)
         (VV Int)
         (EREAD Int)
         (n4_main__SSA__blk_0_1_smt_2_0 Int)
         (n4_main__SSA__blk_0_1 Int)
         (tmp_main Int)
         (EWRITE Int)
         (n4_main Int))
  (let ((a!1 (and (= tmp_main__SSA__blk_0_1 tmp_main__SSA__blk_0_1)
                  (= tmp_main tmp_main)
                  (= n4_main__SSA__blk_0_1 n4_main__SSA__blk_0_1_smt_2_0)
                  (= n4_main__SSA__blk_0_1 n4_main__SSA__blk_0_1)
                  (= n4_main n4_main)
                  (= VV VV)
                  (= EWRITE EWRITE)
                  (= EREAD EREAD)
                  (= VV n4_main__SSA__blk_0_1)
                  (not (= __cil_tmp3_main 0))
                  (= n4_main__SSA__blk_0_1 tmp_main__SSA__blk_0_1)
                  (= __cil_tmp3_main (ite (>= n4_main__SSA__blk_0_1 1) 1 0))
                  true)))
    (=> a!1
        (k_8 EREAD
             EWRITE
             VV
             n4_main
             n4_main__SSA__blk_0_1
             n4_main__SSA__blk_0_1_smt_2_0
             tmp_main
             tmp_main__SSA__blk_0_1)))))
(assert (forall ((tmp_main__SSA__blk_0_1 Int)
         (__cil_tmp3_main Int)
         (VV Int)
         (n4_main__SSA__phi_6 Int)
         (EREAD Int)
         (__cil_tmp4_main Int)
         (n4_main Int)
         (tmp_main Int)
         (EWRITE Int)
         (n4_main__SSA__blk_0_1 Int))
  (let ((a!1 (and (not (not (= VV 0)))
                  (k_8 EREAD
                       EWRITE
                       n4_main__SSA__phi_6
                       n4_main
                       n4_main__SSA__blk_0_1
                       n4_main__SSA__phi_6
                       tmp_main
                       tmp_main__SSA__blk_0_1)
                  (= __cil_tmp3_main (ite (>= n4_main__SSA__blk_0_1 1) 1 0))
                  (= __cil_tmp4_main (ite (>= n4_main__SSA__phi_6 0) 1 0))
                  (= n4_main__SSA__blk_0_1 tmp_main__SSA__blk_0_1)
                  (not (= __cil_tmp3_main 0))
                  (= VV __cil_tmp4_main)
                  true)))
    (=> a!1 false))))

(check-sat)