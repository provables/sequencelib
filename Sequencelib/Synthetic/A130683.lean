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
# A130683 sequence 
-/


namespace Sequence

@[OEIS := A130683, offset := 0, derive := true, maxIndex := 19]
def A130683 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 2 * (x * y)) (1 + x) 2

end Sequence

