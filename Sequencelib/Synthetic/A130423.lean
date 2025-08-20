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
# A130423 sequence 
-/


namespace Sequence

@[OEIS := A130423, offset := 1, derive := true, maxIndex := 100]
def A130423 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((1 + (3 * loop (λ (x y : ℤ) ↦ x + y) x 1)) * (1 + x))

end Sequence

