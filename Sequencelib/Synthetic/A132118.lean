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
# A132118 sequence 
-/


namespace Sequence

@[OEIS := A132118, offset := 1, derive := true, maxIndex := 100]
def A132118 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y : ℤ) ↦ if (y - x) ≤ 0 then x - y else x) x x + 1) + x)

end Sequence

