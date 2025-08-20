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
# A158310 sequence 
-/


namespace Sequence

@[OEIS := A158310, offset := 1, derive := true, maxIndex := 100]
def A158310 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 + (loop (λ (x y : ℤ) ↦ (2 + y) * x) 4 (1 + x) + x))

end Sequence

