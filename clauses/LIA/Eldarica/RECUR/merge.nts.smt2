(set-info :origin "NTS benchmark converted to SMT-LIB2 using Eldarica (http://lara.epfl.ch/w/eldarica)")
(set-logic HORN)
(declare-fun main_q2 (Int Int Int Int Int Int) Bool)
(declare-fun main_qf () Bool)
(declare-fun main_q0 (Int Int Int Int Int Int) Bool)
(declare-fun main_q1 (Int Int Int Int Int Int) Bool)
(declare-fun merge_q8 (Int Int Int Int Int Int) Bool)
(declare-fun merge_q7 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun merge_q5 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun merge_q6 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun merge_q3 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun merge_q4 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun merge_q2 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun merge_q1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun merge_q0 (Int Int Int Int Int Int Int Int Int Int) Bool)
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(=>(and (main_q2 ?A ?B ?C ?D ?E ?F)(= ?D (+ ?F ?E))) main_qf)))
(assert(not (exists((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(and (main_q2 ?A ?B ?C ?D ?E ?F)(not (= ?D (+ ?F ?E)))))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int))(=>(and (main_q0 ?A ?B ?C ?G ?H ?I)(and (and (>= ?F 0) (>= ?E 0)) (= ?G ?D))) (main_q1 ?A ?B ?C ?D ?E ?F))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int))(=>(and (and (= ?A ?D) (= ?B ?E)) (= ?C ?F)) (main_q0 ?A ?B ?C ?D ?E ?F))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (merge_q7 ?A ?G ?C ?H ?B ?I ?J ?K ?L ?M)(and (= ?D (+ 1 ?J)) (and (and (and (= ?J ?N) (= ?K ?F)) (= ?L ?O)) (= ?M ?E)))) (merge_q8 ?A ?B ?C ?D ?E ?F))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (merge_q5 ?A ?G ?C ?H ?B ?I ?J ?K ?L ?M)(and (= ?D (+ 1 ?J)) (and (and (and (= ?J ?N) (= ?K ?F)) (= ?L ?O)) (= ?M ?E)))) (merge_q8 ?A ?B ?C ?D ?E ?F))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (merge_q3 ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (< ?N 0) (and (and (and (and (= ?K ?F) (= ?L ?G)) (= ?M ?H)) (= ?N ?I)) (= ?O ?J)))) (merge_q6 ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (merge_q3 ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (>= ?N 0) (and (and (and (and (= ?K ?F) (= ?L ?G)) (= ?M ?H)) (= ?N ?I)) (= ?O ?J)))) (merge_q4 ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (merge_q2 ?A ?G ?C ?H ?B ?I ?J ?K ?L ?M)(and (= ?D ?M) (and (and (and (= ?J ?N) (= ?K ?F)) (= ?L ?O)) (= ?M ?E)))) (merge_q8 ?A ?B ?C ?D ?E ?F))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (merge_q1 ?A ?G ?C ?H ?B ?I ?J ?K ?L ?M)(and (= ?D ?K) (and (and (and (= ?J ?N) (= ?K ?F)) (= ?L ?O)) (= ?M ?E)))) (merge_q8 ?A ?B ?C ?D ?E ?F))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (merge_q0 ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (and (not (= ?O 0)) (not (= ?M 0))) (and (and (and (= ?K ?F) (= ?L ?G)) (= ?M ?H)) (= ?O ?J)))) (merge_q3 ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (merge_q0 ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (= ?M 0) (and (and (and (and (= ?K ?F) (= ?L ?G)) (= ?M ?H)) (= ?N ?I)) (= ?O ?J)))) (merge_q2 ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (merge_q0 ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (= ?O 0) (and (and (and (and (= ?K ?F) (= ?L ?G)) (= ?M ?H)) (= ?N ?I)) (= ?O ?J)))) (merge_q1 ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int)(?P Int)(?Q Int)(?R Int)(?S Int)(?T Int)(?U Int))(=>(and (and (and (and (merge_q4 ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (= ?P (- ?O 1)) (= ?Q ?M)))(merge_q8 ?R ?P ?Q ?S ?T ?U))(= ?S ?G))(and (and (and (= ?K ?F) (= ?M ?H)) (= ?N ?I)) (= ?O ?J))) (merge_q5 ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int)(?P Int)(?Q Int)(?R Int)(?S Int)(?T Int))(=>(and (and (merge_q4 ?K ?L ?M ?N ?O ?P ?Q ?R ?S ?T)(and (= ?E (- ?T 1)) (= ?C ?R)))(and (and (= ?A ?F) (= ?E ?J)) (= ?C ?H))) (merge_q0 ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int)(?P Int)(?Q Int)(?R Int)(?S Int)(?T Int)(?U Int))(=>(and (and (and (and (merge_q6 ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (= ?P ?O) (= ?Q (- ?M 1))))(merge_q8 ?R ?P ?Q ?S ?T ?U))(= ?S ?G))(and (and (and (= ?K ?F) (= ?M ?H)) (= ?N ?I)) (= ?O ?J))) (merge_q7 ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int)(?P Int)(?Q Int)(?R Int)(?S Int)(?T Int))(=>(and (and (merge_q6 ?K ?L ?M ?N ?O ?P ?Q ?R ?S ?T)(and (= ?E ?T) (= ?C (- ?R 1))))(and (and (= ?A ?F) (= ?E ?J)) (= ?C ?H))) (merge_q0 ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (and (and (and (main_q1 ?A ?B ?C ?G ?H ?I)(and (= ?J ?I) (= ?K ?H)))(merge_q8 ?L ?J ?K ?M ?N ?O))(= ?M ?D))(and (= ?H ?E) (= ?I ?F))) (main_q2 ?A ?B ?C ?D ?E ?F))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int)(?P Int))(=>(and (and (main_q1 ?K ?L ?M ?N ?O ?P)(and (= ?E ?P) (= ?C ?O)))(and (and (= ?A ?F) (= ?E ?J)) (= ?C ?H))) (merge_q0 ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(check-sat)