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
# A220788 sequence 
-/


namespace Sequence

@[OEIS := A220788, offset := 1, derive := true, maxIndex := 4]
def A220788 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (x * y) + y) x x / 2)

end Sequence

