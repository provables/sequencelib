/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A273553 sequence 
-/


namespace Sequence

@[OEIS := A273553, offset := 1, derive := true, maxIndex := 6]
def A273553 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ loop (λ (x y : ℤ) ↦ y / loop (λ (x _y : ℤ) ↦ x + x) x 3) x 0) x

end Sequence

