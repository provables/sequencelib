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
# A086640 sequence 
-/


namespace Sequence

@[OEIS := A086640, offset := 1, derive := true, maxIndex := 42]
def A086640 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + ((1 + x) * loop (λ (x y : ℤ) ↦ ((x + x) + x) + y) 2 x))

end Sequence

