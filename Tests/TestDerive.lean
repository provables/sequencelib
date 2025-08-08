/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Lean
import Sequencelib.Meta

open Lean

@[OEIS := A100, offset := 1, maxIndex := 10, derive := true]
def fooDerive (n : Nat) : Nat := n + 1

/--
error: unknown identifier 'fooDerive_zero'
-/
#guard_msgs in
#check fooDerive_zero

/--
error: unknown identifier 'fooDerive_eleven'
-/
#guard_msgs in
#check fooDerive_eleven

/--
info: fooDerive_one : fooDerive 1 = 2
-/
#guard_msgs in
#check fooDerive_one

/--
info: fooDerive_ten : fooDerive 10 = 11
-/
#guard_msgs in
#check fooDerive_ten

/--
error: Auto derivation of theorems not implemented for noncomputable function barDerive
-/
#guard_msgs in
@[OEIS := A101, maxIndex := 2, derive := true]
noncomputable def barDerive (n : Nat) : Nat := n
