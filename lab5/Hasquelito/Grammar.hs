{-# OPTIONS_GHC -w #-}
-- Hayden SArtris
-- CMSC 305, Lab 5

-- Due: Thursday, November 16, 2017

module Grammar where
import Lexer
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

action_0 (6) = happyShift action_2
action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (11) = happyShift action_6
action_0 (21) = happyShift action_7
action_0 (23) = happyShift action_8
action_0 (24) = happyShift action_9
action_0 (32) = happyShift action_10
action_0 (34) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail

action_1 (6) = happyShift action_2
action_1 _ = happyFail

action_2 _ = happyReduce_1

action_3 (17) = happyShift action_19
action_3 (18) = happyShift action_20
action_3 (19) = happyShift action_21
action_3 (20) = happyShift action_22
action_3 (21) = happyShift action_23
action_3 (22) = happyShift action_24
action_3 (26) = happyShift action_25
action_3 (35) = happyAccept
action_3 _ = happyFail

action_4 _ = happyReduce_2

action_5 (6) = happyShift action_2
action_5 (7) = happyShift action_4
action_5 (8) = happyShift action_5
action_5 (11) = happyShift action_6
action_5 (21) = happyShift action_7
action_5 (23) = happyShift action_8
action_5 (24) = happyShift action_9
action_5 (32) = happyShift action_10
action_5 (34) = happyShift action_11
action_5 (4) = happyGoto action_18
action_5 _ = happyFail

action_6 (34) = happyShift action_17
action_6 _ = happyFail

action_7 (6) = happyShift action_2
action_7 (7) = happyShift action_4
action_7 (8) = happyShift action_5
action_7 (11) = happyShift action_6
action_7 (21) = happyShift action_7
action_7 (23) = happyShift action_8
action_7 (24) = happyShift action_9
action_7 (32) = happyShift action_10
action_7 (34) = happyShift action_11
action_7 (4) = happyGoto action_16
action_7 _ = happyFail

action_8 (6) = happyShift action_2
action_8 (7) = happyShift action_4
action_8 (8) = happyShift action_5
action_8 (11) = happyShift action_6
action_8 (21) = happyShift action_7
action_8 (23) = happyShift action_8
action_8 (24) = happyShift action_9
action_8 (32) = happyShift action_10
action_8 (34) = happyShift action_11
action_8 (4) = happyGoto action_15
action_8 _ = happyFail

action_9 (6) = happyShift action_2
action_9 (7) = happyShift action_4
action_9 (8) = happyShift action_5
action_9 (11) = happyShift action_6
action_9 (21) = happyShift action_7
action_9 (23) = happyShift action_8
action_9 (24) = happyShift action_9
action_9 (32) = happyShift action_10
action_9 (34) = happyShift action_11
action_9 (4) = happyGoto action_14
action_9 _ = happyFail

action_10 (6) = happyShift action_2
action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (11) = happyShift action_6
action_10 (14) = happyShift action_13
action_10 (21) = happyShift action_7
action_10 (23) = happyShift action_8
action_10 (24) = happyShift action_9
action_10 (32) = happyShift action_10
action_10 (34) = happyShift action_11
action_10 (4) = happyGoto action_12
action_10 _ = happyFail

action_11 _ = happyReduce_17

action_12 (17) = happyShift action_19
action_12 (18) = happyShift action_20
action_12 (19) = happyShift action_21
action_12 (20) = happyShift action_22
action_12 (21) = happyShift action_23
action_12 (22) = happyShift action_24
action_12 (26) = happyShift action_25
action_12 (33) = happyShift action_39
action_12 _ = happyFail

action_13 (34) = happyShift action_38
action_13 _ = happyFail

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_4
action_14 (8) = happyShift action_5
action_14 (11) = happyShift action_6
action_14 (17) = happyShift action_19
action_14 (18) = happyShift action_20
action_14 (19) = happyShift action_21
action_14 (20) = happyShift action_22
action_14 (21) = happyShift action_36
action_14 (22) = happyShift action_24
action_14 (23) = happyShift action_8
action_14 (24) = happyShift action_9
action_14 (26) = happyShift action_25
action_14 (32) = happyShift action_10
action_14 (34) = happyShift action_11
action_14 (4) = happyGoto action_37
action_14 _ = happyFail

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_4
action_15 (8) = happyShift action_5
action_15 (11) = happyShift action_6
action_15 (17) = happyShift action_19
action_15 (18) = happyShift action_20
action_15 (19) = happyShift action_21
action_15 (20) = happyShift action_22
action_15 (21) = happyShift action_36
action_15 (22) = happyShift action_24
action_15 (23) = happyShift action_8
action_15 (24) = happyShift action_9
action_15 (26) = happyShift action_25
action_15 (32) = happyShift action_10
action_15 (34) = happyShift action_11
action_15 (4) = happyGoto action_35
action_15 _ = happyFail

action_16 (17) = happyShift action_19
action_16 (18) = happyShift action_20
action_16 (19) = happyShift action_21
action_16 (22) = happyShift action_24
action_16 (26) = happyShift action_25
action_16 _ = happyReduce_13

action_17 (12) = happyShift action_34
action_17 _ = happyFail

action_18 (9) = happyShift action_33
action_18 (17) = happyShift action_19
action_18 (18) = happyShift action_20
action_18 (19) = happyShift action_21
action_18 (20) = happyShift action_22
action_18 (21) = happyShift action_23
action_18 (22) = happyShift action_24
action_18 (26) = happyShift action_25
action_18 _ = happyFail

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (11) = happyShift action_6
action_19 (21) = happyShift action_7
action_19 (23) = happyShift action_8
action_19 (24) = happyShift action_9
action_19 (32) = happyShift action_10
action_19 (34) = happyShift action_11
action_19 (4) = happyGoto action_32
action_19 _ = happyFail

action_20 (6) = happyShift action_2
action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (11) = happyShift action_6
action_20 (21) = happyShift action_7
action_20 (23) = happyShift action_8
action_20 (24) = happyShift action_9
action_20 (32) = happyShift action_10
action_20 (34) = happyShift action_11
action_20 (4) = happyGoto action_31
action_20 _ = happyFail

action_21 (6) = happyShift action_2
action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_5
action_21 (11) = happyShift action_6
action_21 (21) = happyShift action_7
action_21 (23) = happyShift action_8
action_21 (24) = happyShift action_9
action_21 (32) = happyShift action_10
action_21 (34) = happyShift action_11
action_21 (4) = happyGoto action_30
action_21 _ = happyFail

action_22 (6) = happyShift action_2
action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (11) = happyShift action_6
action_22 (21) = happyShift action_7
action_22 (23) = happyShift action_8
action_22 (24) = happyShift action_9
action_22 (32) = happyShift action_10
action_22 (34) = happyShift action_11
action_22 (4) = happyGoto action_29
action_22 _ = happyFail

action_23 (6) = happyShift action_2
action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (11) = happyShift action_6
action_23 (21) = happyShift action_7
action_23 (23) = happyShift action_8
action_23 (24) = happyShift action_9
action_23 (32) = happyShift action_10
action_23 (34) = happyShift action_11
action_23 (4) = happyGoto action_28
action_23 _ = happyFail

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_5
action_24 (11) = happyShift action_6
action_24 (21) = happyShift action_7
action_24 (23) = happyShift action_8
action_24 (24) = happyShift action_9
action_24 (32) = happyShift action_10
action_24 (34) = happyShift action_11
action_24 (4) = happyGoto action_27
action_24 _ = happyFail

action_25 (6) = happyShift action_2
action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (11) = happyShift action_6
action_25 (21) = happyShift action_7
action_25 (23) = happyShift action_8
action_25 (24) = happyShift action_9
action_25 (32) = happyShift action_10
action_25 (34) = happyShift action_11
action_25 (4) = happyGoto action_26
action_25 _ = happyFail

action_26 (17) = happyShift action_19
action_26 (18) = happyShift action_20
action_26 (19) = happyShift action_21
action_26 (20) = happyShift action_22
action_26 (21) = happyShift action_23
action_26 (22) = happyShift action_24
action_26 (26) = happyShift action_25
action_26 _ = happyReduce_15

action_27 (17) = happyShift action_19
action_27 (18) = happyShift action_20
action_27 (19) = happyShift action_21
action_27 (26) = happyShift action_25
action_27 _ = happyReduce_10

action_28 (17) = happyShift action_19
action_28 (18) = happyShift action_20
action_28 (19) = happyShift action_21
action_28 (22) = happyShift action_24
action_28 (26) = happyShift action_25
action_28 _ = happyReduce_9

action_29 (17) = happyShift action_19
action_29 (18) = happyShift action_20
action_29 (19) = happyShift action_21
action_29 (22) = happyShift action_24
action_29 (26) = happyShift action_25
action_29 _ = happyReduce_8

action_30 (17) = happyShift action_19
action_30 (18) = happyShift action_20
action_30 (19) = happyShift action_21
action_30 (20) = happyShift action_22
action_30 (21) = happyShift action_23
action_30 (22) = happyShift action_24
action_30 (26) = happyShift action_25
action_30 _ = happyReduce_7

action_31 (17) = happyShift action_19
action_31 (18) = happyShift action_20
action_31 (19) = happyShift action_21
action_31 (20) = happyShift action_22
action_31 (21) = happyShift action_23
action_31 (22) = happyShift action_24
action_31 (26) = happyShift action_25
action_31 _ = happyReduce_6

action_32 (17) = happyShift action_19
action_32 (18) = happyShift action_20
action_32 (19) = happyShift action_21
action_32 (20) = happyShift action_22
action_32 (21) = happyShift action_23
action_32 (22) = happyShift action_24
action_32 (26) = happyShift action_25
action_32 _ = happyReduce_14

action_33 (6) = happyShift action_2
action_33 (7) = happyShift action_4
action_33 (8) = happyShift action_5
action_33 (11) = happyShift action_6
action_33 (21) = happyShift action_7
action_33 (23) = happyShift action_8
action_33 (24) = happyShift action_9
action_33 (32) = happyShift action_10
action_33 (34) = happyShift action_11
action_33 (4) = happyGoto action_43
action_33 _ = happyFail

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_4
action_34 (8) = happyShift action_5
action_34 (11) = happyShift action_6
action_34 (21) = happyShift action_7
action_34 (23) = happyShift action_8
action_34 (24) = happyShift action_9
action_34 (32) = happyShift action_10
action_34 (34) = happyShift action_11
action_34 (4) = happyGoto action_42
action_34 _ = happyFail

action_35 (17) = happyShift action_19
action_35 (18) = happyShift action_20
action_35 (19) = happyShift action_21
action_35 (20) = happyShift action_22
action_35 (21) = happyShift action_23
action_35 (22) = happyShift action_24
action_35 (26) = happyShift action_25
action_35 _ = happyReduce_11

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_4
action_36 (8) = happyShift action_5
action_36 (11) = happyShift action_6
action_36 (21) = happyShift action_7
action_36 (23) = happyShift action_8
action_36 (24) = happyShift action_9
action_36 (32) = happyShift action_10
action_36 (34) = happyShift action_11
action_36 (4) = happyGoto action_41
action_36 _ = happyFail

action_37 (17) = happyShift action_19
action_37 (18) = happyShift action_20
action_37 (19) = happyShift action_21
action_37 (20) = happyShift action_22
action_37 (21) = happyShift action_23
action_37 (22) = happyShift action_24
action_37 (26) = happyShift action_25
action_37 _ = happyReduce_12

action_38 (15) = happyShift action_40
action_38 _ = happyFail

action_39 _ = happyReduce_16

action_40 (6) = happyShift action_2
action_40 (7) = happyShift action_4
action_40 (8) = happyShift action_5
action_40 (11) = happyShift action_6
action_40 (21) = happyShift action_7
action_40 (23) = happyShift action_8
action_40 (24) = happyShift action_9
action_40 (32) = happyShift action_10
action_40 (34) = happyShift action_11
action_40 (4) = happyGoto action_46
action_40 _ = happyFail

action_41 (6) = happyReduce_9
action_41 (7) = happyReduce_9
action_41 (8) = happyReduce_9
action_41 (11) = happyReduce_9
action_41 (17) = happyShift action_19
action_41 (18) = happyShift action_20
action_41 (19) = happyShift action_21
action_41 (20) = happyReduce_9
action_41 (21) = happyReduce_9
action_41 (22) = happyShift action_24
action_41 (23) = happyReduce_9
action_41 (24) = happyReduce_9
action_41 (26) = happyShift action_25
action_41 (32) = happyReduce_9
action_41 (34) = happyReduce_9
action_41 _ = happyReduce_13

action_42 (13) = happyShift action_45
action_42 (17) = happyShift action_19
action_42 (18) = happyShift action_20
action_42 (19) = happyShift action_21
action_42 (20) = happyShift action_22
action_42 (21) = happyShift action_23
action_42 (22) = happyShift action_24
action_42 (26) = happyShift action_25
action_42 _ = happyFail

action_43 (10) = happyShift action_44
action_43 (17) = happyShift action_19
action_43 (18) = happyShift action_20
action_43 (19) = happyShift action_21
action_43 (20) = happyShift action_22
action_43 (21) = happyShift action_23
action_43 (22) = happyShift action_24
action_43 (26) = happyShift action_25
action_43 _ = happyFail

action_44 (6) = happyShift action_2
action_44 (7) = happyShift action_4
action_44 (8) = happyShift action_5
action_44 (11) = happyShift action_6
action_44 (21) = happyShift action_7
action_44 (23) = happyShift action_8
action_44 (24) = happyShift action_9
action_44 (32) = happyShift action_10
action_44 (34) = happyShift action_11
action_44 (4) = happyGoto action_49
action_44 _ = happyFail

action_45 (6) = happyShift action_2
action_45 (7) = happyShift action_4
action_45 (8) = happyShift action_5
action_45 (11) = happyShift action_6
action_45 (21) = happyShift action_7
action_45 (23) = happyShift action_8
action_45 (24) = happyShift action_9
action_45 (32) = happyShift action_10
action_45 (34) = happyShift action_11
action_45 (4) = happyGoto action_48
action_45 _ = happyFail

action_46 (17) = happyShift action_19
action_46 (18) = happyShift action_20
action_46 (19) = happyShift action_21
action_46 (20) = happyShift action_22
action_46 (21) = happyShift action_23
action_46 (22) = happyShift action_24
action_46 (26) = happyShift action_25
action_46 (33) = happyShift action_47
action_46 _ = happyFail

action_47 (16) = happyShift action_50
action_47 _ = happyFail

action_48 (17) = happyShift action_19
action_48 (18) = happyShift action_20
action_48 (19) = happyShift action_21
action_48 (20) = happyShift action_22
action_48 (21) = happyShift action_23
action_48 (22) = happyShift action_24
action_48 (26) = happyShift action_25
action_48 _ = happyReduce_3

action_49 (17) = happyShift action_19
action_49 (18) = happyShift action_20
action_49 (19) = happyShift action_21
action_49 (20) = happyShift action_22
action_49 (21) = happyShift action_23
action_49 (22) = happyShift action_24
action_49 (26) = happyShift action_25
action_49 _ = happyReduce_4

action_50 (30) = happyShift action_52
action_50 (31) = happyShift action_53
action_50 (5) = happyGoto action_51
action_50 _ = happyFail

action_51 (15) = happyShift action_54
action_51 _ = happyFail

action_52 _ = happyReduce_18

action_53 _ = happyReduce_19

action_54 (30) = happyShift action_52
action_54 (31) = happyShift action_53
action_54 (5) = happyGoto action_55
action_54 _ = happyFail

action_55 (15) = happyShift action_56
action_55 _ = happyReduce_5

action_56 (30) = happyShift action_52
action_56 (31) = happyShift action_53
action_56 (5) = happyGoto action_57
action_56 _ = happyFail

action_57 (15) = happyShift action_56
action_57 _ = happyReduce_20

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (BOOLVAL happy_var_1))
	 =  HappyAbsSyn4
		 (Boolean happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (INTVAL happy_var_1))
	 =  HappyAbsSyn4
		 (Integer happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happyReduce 6 4 happyReduction_3
happyReduction_3 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 6 4 happyReduction_4
happyReduction_4 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 10 4 happyReduction_5
happyReduction_5 ((HappyAbsSyn5  happy_var_10) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lambda happy_var_3 happy_var_5 happy_var_8 happy_var_10
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Times happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Quot happy_var_2 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Rem happy_var_2 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Minus (Integer 0) happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equals happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or (Gt happy_var_1 happy_var_3) (Equals happy_var_1 happy_var_3)
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  4 happyReduction_17
happyReduction_17 (HappyTerminal (VAR happy_var_1))
	 =  HappyAbsSyn4
		 (Variable happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn5
		 (BoolType
	)

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn5
		 (IntType
	)

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Arrow happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	BOOLVAL happy_dollar_dollar -> cont 6;
	INTVAL happy_dollar_dollar -> cont 7;
	IF -> cont 8;
	THEN -> cont 9;
	ELSE -> cont 10;
	LET -> cont 11;
	BIND -> cont 12;
	IN -> cont 13;
	LAMBDA -> cont 14;
	ARROW -> cont 15;
	COLONS -> cont 16;
	EQUALS -> cont 17;
	AND -> cont 18;
	OR -> cont 19;
	PLUS -> cont 20;
	MINUS -> cont 21;
	TIMES -> cont 22;
	QUOT -> cont 23;
	REM -> cont 24;
	LTEQ -> cont 25;
	GTEQ -> cont 26;
	NOTEQ -> cont 27;
	Lexer.LT -> cont 28;
	Lexer.GT -> cont 29;
	BOOL -> cont 30;
	INT -> cont 31;
	LPAREN -> cont 32;
	RPAREN -> cont 33;
	VAR happy_dollar_dollar -> cont 34;
	_ -> happyError' (tk:tks)
	}

happyError_ 35 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = return
    (<*>) = ap
instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parserError

parseHasquelito tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError:: [Token] -> a
parserError _ = error "Parse Error"

data AST =
        Boolean Bool
        | Integer Int
        | Let String AST AST
        | If AST AST AST
        | Lambda String AST TypeExp TypeExp
        | App AST AST
        | And AST AST
        | Or AST AST
        | Plus AST AST
        | Minus AST AST
        | Times AST AST
        | Quot AST AST
        | Rem AST AST
        | Equals AST AST
        | Gt AST AST
        | Lt AST AST
        | Variable String
        deriving (Eq,Show)

data TypeExp =
        BoolType
        | IntType
        | Arrow TypeExp TypeExp
        deriving (Eq,Show)

data BoolType =
        True
        | False
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4










































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/home/hp/haskell-platform/build/ghc-bindist/local/lib/ghc-8.2.1/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc6134_0/ghc_2.h" #-}


































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}

{-# LINE 46 "templates/GenericTemplate.hs" #-}








{-# LINE 67 "templates/GenericTemplate.hs" #-}

{-# LINE 77 "templates/GenericTemplate.hs" #-}

{-# LINE 86 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 155 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 256 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 322 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
