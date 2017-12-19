{-# OPTIONS_GHC -w #-}
-- Hayden Sartoris
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

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_4
action_3 (8) = happyShift action_5
action_3 (11) = happyShift action_6
action_3 (17) = happyShift action_20
action_3 (18) = happyShift action_21
action_3 (19) = happyShift action_22
action_3 (20) = happyShift action_23
action_3 (21) = happyShift action_24
action_3 (22) = happyShift action_25
action_3 (23) = happyShift action_8
action_3 (24) = happyShift action_9
action_3 (25) = happyShift action_26
action_3 (26) = happyShift action_27
action_3 (27) = happyShift action_28
action_3 (28) = happyShift action_29
action_3 (29) = happyShift action_30
action_3 (32) = happyShift action_10
action_3 (34) = happyShift action_11
action_3 (35) = happyAccept
action_3 (4) = happyGoto action_19
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

action_11 _ = happyReduce_23

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_4
action_12 (8) = happyShift action_5
action_12 (11) = happyShift action_6
action_12 (17) = happyShift action_20
action_12 (18) = happyShift action_21
action_12 (19) = happyShift action_22
action_12 (20) = happyShift action_23
action_12 (21) = happyShift action_24
action_12 (22) = happyShift action_25
action_12 (23) = happyShift action_8
action_12 (24) = happyShift action_9
action_12 (25) = happyShift action_26
action_12 (26) = happyShift action_27
action_12 (27) = happyShift action_28
action_12 (28) = happyShift action_29
action_12 (29) = happyShift action_30
action_12 (32) = happyShift action_10
action_12 (33) = happyShift action_49
action_12 (34) = happyShift action_11
action_12 (4) = happyGoto action_19
action_12 _ = happyFail

action_13 (34) = happyShift action_48
action_13 _ = happyFail

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_4
action_14 (8) = happyShift action_5
action_14 (11) = happyShift action_6
action_14 (17) = happyShift action_20
action_14 (18) = happyShift action_21
action_14 (19) = happyShift action_22
action_14 (20) = happyShift action_23
action_14 (21) = happyShift action_24
action_14 (22) = happyShift action_25
action_14 (23) = happyShift action_8
action_14 (24) = happyShift action_9
action_14 (25) = happyShift action_26
action_14 (26) = happyShift action_27
action_14 (27) = happyShift action_28
action_14 (28) = happyShift action_29
action_14 (29) = happyShift action_30
action_14 (32) = happyShift action_10
action_14 (34) = happyShift action_11
action_14 (4) = happyGoto action_47
action_14 _ = happyFail

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_4
action_15 (8) = happyShift action_5
action_15 (11) = happyShift action_6
action_15 (17) = happyShift action_20
action_15 (18) = happyShift action_21
action_15 (19) = happyShift action_22
action_15 (20) = happyShift action_23
action_15 (21) = happyShift action_24
action_15 (22) = happyShift action_25
action_15 (23) = happyShift action_8
action_15 (24) = happyShift action_9
action_15 (25) = happyShift action_26
action_15 (26) = happyShift action_27
action_15 (27) = happyShift action_28
action_15 (28) = happyShift action_29
action_15 (29) = happyShift action_30
action_15 (32) = happyShift action_10
action_15 (34) = happyShift action_11
action_15 (4) = happyGoto action_46
action_15 _ = happyFail

action_16 (20) = happyShift action_44
action_16 (21) = happyShift action_45
action_16 (22) = happyShift action_25
action_16 (23) = happyShift action_8
action_16 (24) = happyShift action_9
action_16 (4) = happyGoto action_19
action_16 _ = happyReduce_10

action_17 (12) = happyShift action_43
action_17 _ = happyFail

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_4
action_18 (8) = happyShift action_5
action_18 (9) = happyShift action_42
action_18 (11) = happyShift action_6
action_18 (17) = happyShift action_20
action_18 (18) = happyShift action_21
action_18 (19) = happyShift action_22
action_18 (20) = happyShift action_23
action_18 (21) = happyShift action_24
action_18 (22) = happyShift action_25
action_18 (23) = happyShift action_8
action_18 (24) = happyShift action_9
action_18 (25) = happyShift action_26
action_18 (26) = happyShift action_27
action_18 (27) = happyShift action_28
action_18 (28) = happyShift action_29
action_18 (29) = happyShift action_30
action_18 (32) = happyShift action_10
action_18 (34) = happyShift action_11
action_18 (4) = happyGoto action_19
action_18 _ = happyFail

action_19 (23) = happyShift action_8
action_19 (24) = happyShift action_9
action_19 (4) = happyGoto action_19
action_19 _ = happyReduce_3

action_20 (6) = happyShift action_2
action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (11) = happyShift action_6
action_20 (21) = happyShift action_7
action_20 (23) = happyShift action_8
action_20 (24) = happyShift action_9
action_20 (32) = happyShift action_10
action_20 (34) = happyShift action_11
action_20 (4) = happyGoto action_41
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
action_21 (4) = happyGoto action_40
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
action_22 (4) = happyGoto action_39
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
action_23 (4) = happyGoto action_38
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
action_24 (4) = happyGoto action_37
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
action_25 (4) = happyGoto action_36
action_25 _ = happyFail

action_26 (6) = happyShift action_2
action_26 (7) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (11) = happyShift action_6
action_26 (21) = happyShift action_7
action_26 (23) = happyShift action_8
action_26 (24) = happyShift action_9
action_26 (32) = happyShift action_10
action_26 (34) = happyShift action_11
action_26 (4) = happyGoto action_35
action_26 _ = happyFail

action_27 (6) = happyShift action_2
action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (11) = happyShift action_6
action_27 (21) = happyShift action_7
action_27 (23) = happyShift action_8
action_27 (24) = happyShift action_9
action_27 (32) = happyShift action_10
action_27 (34) = happyShift action_11
action_27 (4) = happyGoto action_34
action_27 _ = happyFail

action_28 (6) = happyShift action_2
action_28 (7) = happyShift action_4
action_28 (8) = happyShift action_5
action_28 (11) = happyShift action_6
action_28 (21) = happyShift action_7
action_28 (23) = happyShift action_8
action_28 (24) = happyShift action_9
action_28 (32) = happyShift action_10
action_28 (34) = happyShift action_11
action_28 (4) = happyGoto action_33
action_28 _ = happyFail

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_4
action_29 (8) = happyShift action_5
action_29 (11) = happyShift action_6
action_29 (21) = happyShift action_7
action_29 (23) = happyShift action_8
action_29 (24) = happyShift action_9
action_29 (32) = happyShift action_10
action_29 (34) = happyShift action_11
action_29 (4) = happyGoto action_32
action_29 _ = happyFail

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_4
action_30 (8) = happyShift action_5
action_30 (11) = happyShift action_6
action_30 (21) = happyShift action_7
action_30 (23) = happyShift action_8
action_30 (24) = happyShift action_9
action_30 (32) = happyShift action_10
action_30 (34) = happyShift action_11
action_30 (4) = happyGoto action_31
action_30 _ = happyFail

action_31 (17) = happyFail
action_31 (20) = happyShift action_23
action_31 (21) = happyShift action_24
action_31 (22) = happyShift action_25
action_31 (23) = happyShift action_8
action_31 (24) = happyShift action_9
action_31 (25) = happyFail
action_31 (26) = happyFail
action_31 (27) = happyFail
action_31 (28) = happyFail
action_31 (29) = happyFail
action_31 (4) = happyGoto action_19
action_31 _ = happyReduce_19

action_32 (17) = happyFail
action_32 (20) = happyShift action_23
action_32 (21) = happyShift action_24
action_32 (22) = happyShift action_25
action_32 (23) = happyShift action_8
action_32 (24) = happyShift action_9
action_32 (25) = happyFail
action_32 (26) = happyFail
action_32 (27) = happyFail
action_32 (28) = happyFail
action_32 (29) = happyFail
action_32 (4) = happyGoto action_19
action_32 _ = happyReduce_20

action_33 (17) = happyFail
action_33 (20) = happyShift action_23
action_33 (21) = happyShift action_24
action_33 (22) = happyShift action_25
action_33 (23) = happyShift action_8
action_33 (24) = happyShift action_9
action_33 (25) = happyFail
action_33 (26) = happyFail
action_33 (27) = happyFail
action_33 (28) = happyFail
action_33 (29) = happyFail
action_33 (4) = happyGoto action_19
action_33 _ = happyReduce_18

action_34 (17) = happyFail
action_34 (20) = happyShift action_23
action_34 (21) = happyShift action_24
action_34 (22) = happyShift action_25
action_34 (23) = happyShift action_8
action_34 (24) = happyShift action_9
action_34 (25) = happyFail
action_34 (26) = happyFail
action_34 (27) = happyFail
action_34 (28) = happyFail
action_34 (29) = happyFail
action_34 (4) = happyGoto action_19
action_34 _ = happyReduce_16

action_35 (17) = happyFail
action_35 (20) = happyShift action_23
action_35 (21) = happyShift action_24
action_35 (22) = happyShift action_25
action_35 (23) = happyShift action_8
action_35 (24) = happyShift action_9
action_35 (25) = happyFail
action_35 (26) = happyFail
action_35 (27) = happyFail
action_35 (28) = happyFail
action_35 (29) = happyFail
action_35 (4) = happyGoto action_19
action_35 _ = happyReduce_17

action_36 (23) = happyShift action_8
action_36 (24) = happyShift action_9
action_36 (4) = happyGoto action_19
action_36 _ = happyReduce_14

action_37 (22) = happyShift action_25
action_37 (23) = happyShift action_8
action_37 (24) = happyShift action_9
action_37 (4) = happyGoto action_19
action_37 _ = happyReduce_11

action_38 (22) = happyShift action_25
action_38 (23) = happyShift action_8
action_38 (24) = happyShift action_9
action_38 (4) = happyGoto action_19
action_38 _ = happyReduce_9

action_39 (17) = happyShift action_20
action_39 (18) = happyShift action_21
action_39 (19) = happyShift action_22
action_39 (20) = happyShift action_23
action_39 (21) = happyShift action_24
action_39 (22) = happyShift action_25
action_39 (23) = happyShift action_8
action_39 (24) = happyShift action_9
action_39 (25) = happyShift action_26
action_39 (26) = happyShift action_27
action_39 (27) = happyShift action_28
action_39 (28) = happyShift action_29
action_39 (29) = happyShift action_30
action_39 (4) = happyGoto action_19
action_39 _ = happyReduce_8

action_40 (17) = happyShift action_20
action_40 (18) = happyShift action_21
action_40 (20) = happyShift action_23
action_40 (21) = happyShift action_24
action_40 (22) = happyShift action_25
action_40 (23) = happyShift action_8
action_40 (24) = happyShift action_9
action_40 (25) = happyShift action_26
action_40 (26) = happyShift action_27
action_40 (27) = happyShift action_28
action_40 (28) = happyShift action_29
action_40 (29) = happyShift action_30
action_40 (4) = happyGoto action_19
action_40 _ = happyReduce_7

action_41 (17) = happyFail
action_41 (20) = happyShift action_23
action_41 (21) = happyShift action_24
action_41 (22) = happyShift action_25
action_41 (23) = happyShift action_8
action_41 (24) = happyShift action_9
action_41 (25) = happyFail
action_41 (26) = happyFail
action_41 (27) = happyFail
action_41 (28) = happyFail
action_41 (29) = happyFail
action_41 (4) = happyGoto action_19
action_41 _ = happyReduce_15

action_42 (6) = happyShift action_2
action_42 (7) = happyShift action_4
action_42 (8) = happyShift action_5
action_42 (11) = happyShift action_6
action_42 (21) = happyShift action_7
action_42 (23) = happyShift action_8
action_42 (24) = happyShift action_9
action_42 (32) = happyShift action_10
action_42 (34) = happyShift action_11
action_42 (4) = happyGoto action_54
action_42 _ = happyFail

action_43 (6) = happyShift action_2
action_43 (7) = happyShift action_4
action_43 (8) = happyShift action_5
action_43 (11) = happyShift action_6
action_43 (21) = happyShift action_7
action_43 (23) = happyShift action_8
action_43 (24) = happyShift action_9
action_43 (32) = happyShift action_10
action_43 (34) = happyShift action_11
action_43 (4) = happyGoto action_53
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
action_44 (4) = happyGoto action_52
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
action_45 (4) = happyGoto action_51
action_45 _ = happyFail

action_46 (4) = happyGoto action_19
action_46 _ = happyReduce_21

action_47 (4) = happyGoto action_19
action_47 _ = happyReduce_22

action_48 (15) = happyShift action_50
action_48 _ = happyFail

action_49 _ = happyReduce_24

action_50 (6) = happyShift action_2
action_50 (7) = happyShift action_4
action_50 (8) = happyShift action_5
action_50 (11) = happyShift action_6
action_50 (21) = happyShift action_7
action_50 (23) = happyShift action_8
action_50 (24) = happyShift action_9
action_50 (32) = happyShift action_10
action_50 (34) = happyShift action_11
action_50 (4) = happyGoto action_57
action_50 _ = happyFail

action_51 (22) = happyShift action_25
action_51 (23) = happyShift action_8
action_51 (24) = happyShift action_9
action_51 (4) = happyGoto action_19
action_51 _ = happyReduce_12

action_52 (22) = happyShift action_25
action_52 (23) = happyShift action_8
action_52 (24) = happyShift action_9
action_52 (4) = happyGoto action_19
action_52 _ = happyReduce_13

action_53 (6) = happyShift action_2
action_53 (7) = happyShift action_4
action_53 (8) = happyShift action_5
action_53 (11) = happyShift action_6
action_53 (13) = happyShift action_56
action_53 (17) = happyShift action_20
action_53 (18) = happyShift action_21
action_53 (19) = happyShift action_22
action_53 (20) = happyShift action_23
action_53 (21) = happyShift action_24
action_53 (22) = happyShift action_25
action_53 (23) = happyShift action_8
action_53 (24) = happyShift action_9
action_53 (25) = happyShift action_26
action_53 (26) = happyShift action_27
action_53 (27) = happyShift action_28
action_53 (28) = happyShift action_29
action_53 (29) = happyShift action_30
action_53 (32) = happyShift action_10
action_53 (34) = happyShift action_11
action_53 (4) = happyGoto action_19
action_53 _ = happyFail

action_54 (6) = happyShift action_2
action_54 (7) = happyShift action_4
action_54 (8) = happyShift action_5
action_54 (10) = happyShift action_55
action_54 (11) = happyShift action_6
action_54 (17) = happyShift action_20
action_54 (18) = happyShift action_21
action_54 (19) = happyShift action_22
action_54 (20) = happyShift action_23
action_54 (21) = happyShift action_24
action_54 (22) = happyShift action_25
action_54 (23) = happyShift action_8
action_54 (24) = happyShift action_9
action_54 (25) = happyShift action_26
action_54 (26) = happyShift action_27
action_54 (27) = happyShift action_28
action_54 (28) = happyShift action_29
action_54 (29) = happyShift action_30
action_54 (32) = happyShift action_10
action_54 (34) = happyShift action_11
action_54 (4) = happyGoto action_19
action_54 _ = happyFail

action_55 (6) = happyShift action_2
action_55 (7) = happyShift action_4
action_55 (8) = happyShift action_5
action_55 (11) = happyShift action_6
action_55 (21) = happyShift action_7
action_55 (23) = happyShift action_8
action_55 (24) = happyShift action_9
action_55 (32) = happyShift action_10
action_55 (34) = happyShift action_11
action_55 (4) = happyGoto action_60
action_55 _ = happyFail

action_56 (6) = happyShift action_2
action_56 (7) = happyShift action_4
action_56 (8) = happyShift action_5
action_56 (11) = happyShift action_6
action_56 (21) = happyShift action_7
action_56 (23) = happyShift action_8
action_56 (24) = happyShift action_9
action_56 (32) = happyShift action_10
action_56 (34) = happyShift action_11
action_56 (4) = happyGoto action_59
action_56 _ = happyFail

action_57 (6) = happyShift action_2
action_57 (7) = happyShift action_4
action_57 (8) = happyShift action_5
action_57 (11) = happyShift action_6
action_57 (17) = happyShift action_20
action_57 (18) = happyShift action_21
action_57 (19) = happyShift action_22
action_57 (20) = happyShift action_23
action_57 (21) = happyShift action_24
action_57 (22) = happyShift action_25
action_57 (23) = happyShift action_8
action_57 (24) = happyShift action_9
action_57 (25) = happyShift action_26
action_57 (26) = happyShift action_27
action_57 (27) = happyShift action_28
action_57 (28) = happyShift action_29
action_57 (29) = happyShift action_30
action_57 (32) = happyShift action_10
action_57 (33) = happyShift action_58
action_57 (34) = happyShift action_11
action_57 (4) = happyGoto action_19
action_57 _ = happyFail

action_58 (16) = happyShift action_61
action_58 _ = happyFail

action_59 (6) = happyShift action_2
action_59 (7) = happyShift action_4
action_59 (8) = happyShift action_5
action_59 (11) = happyShift action_6
action_59 (17) = happyShift action_20
action_59 (18) = happyShift action_21
action_59 (19) = happyShift action_22
action_59 (20) = happyShift action_23
action_59 (21) = happyShift action_24
action_59 (22) = happyShift action_25
action_59 (23) = happyShift action_8
action_59 (24) = happyShift action_9
action_59 (25) = happyShift action_26
action_59 (26) = happyShift action_27
action_59 (27) = happyShift action_28
action_59 (28) = happyShift action_29
action_59 (29) = happyShift action_30
action_59 (34) = happyShift action_11
action_59 (4) = happyGoto action_19
action_59 _ = happyReduce_4

action_60 (6) = happyShift action_2
action_60 (7) = happyShift action_4
action_60 (8) = happyShift action_5
action_60 (11) = happyShift action_6
action_60 (17) = happyShift action_20
action_60 (18) = happyShift action_21
action_60 (19) = happyShift action_22
action_60 (20) = happyShift action_23
action_60 (21) = happyShift action_24
action_60 (22) = happyShift action_25
action_60 (23) = happyShift action_8
action_60 (24) = happyShift action_9
action_60 (25) = happyShift action_26
action_60 (26) = happyShift action_27
action_60 (27) = happyShift action_28
action_60 (28) = happyShift action_29
action_60 (29) = happyShift action_30
action_60 (34) = happyShift action_11
action_60 (4) = happyGoto action_19
action_60 _ = happyReduce_5

action_61 (30) = happyShift action_63
action_61 (31) = happyShift action_64
action_61 (5) = happyGoto action_62
action_61 _ = happyFail

action_62 (15) = happyShift action_65
action_62 _ = happyFail

action_63 _ = happyReduce_25

action_64 _ = happyReduce_26

action_65 (30) = happyShift action_63
action_65 (31) = happyShift action_64
action_65 (5) = happyGoto action_66
action_65 _ = happyFail

action_66 (15) = happyShift action_67
action_66 _ = happyReduce_6

action_67 (30) = happyShift action_63
action_67 (31) = happyShift action_64
action_67 (5) = happyGoto action_68
action_67 _ = happyFail

action_68 (15) = happyShift action_67
action_68 _ = happyReduce_27

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

happyReduce_3 = happySpecReduce_2  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happyReduce 6 4 happyReduction_4
happyReduction_4 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (VAR happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 6 4 happyReduction_5
happyReduction_5 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 10 4 happyReduction_6
happyReduction_6 ((HappyAbsSyn5  happy_var_10) `HappyStk`
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

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Minus (Integer 0) happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 4 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Minus (Minus (Integer 0) happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 4 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Plus  (Minus (Integer 0) happy_var_2) happy_var_4
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Times happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equals happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or (Gt happy_var_1 happy_var_3) (Equals happy_var_1 happy_var_3)
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or (Lt happy_var_1 happy_var_3) (Equals happy_var_1 happy_var_3)
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or (Gt happy_var_1 happy_var_3) (Lt happy_var_1 happy_var_3)
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Gt happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Lt happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Quot happy_var_2 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Rem happy_var_2 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  4 happyReduction_23
happyReduction_23 (HappyTerminal (VAR happy_var_1))
	 =  HappyAbsSyn4
		 (Variable happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  4 happyReduction_24
happyReduction_24 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn5
		 (BoolType
	)

happyReduce_26 = happySpecReduce_1  5 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn5
		 (IntType
	)

happyReduce_27 = happySpecReduce_3  5 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Arrow happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

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
