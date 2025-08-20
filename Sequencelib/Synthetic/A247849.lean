/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta
import GenSeq

open Synth

/-!
# A247849 sequence 
-/


namespace Sequence

@[OEIS := A247849, offset := 1, derive := true, maxIndex := 6]
def A247849 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ loop (λ (x y : ℤ) ↦ x + y) (y * 2) (x / 2)) 2 x + x)

end Sequence

