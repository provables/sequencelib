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
# A036918 sequence 
-/


namespace Sequence

@[OEIS := A036918, offset := 1, derive := true, maxIndex := 22]
def A036918 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y : ℤ) ↦ 1 + (x * y)) x 1 * x)

end Sequence

