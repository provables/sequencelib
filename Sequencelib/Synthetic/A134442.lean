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
# A134442 sequence 
-/


namespace Sequence

@[OEIS := A134442, offset := 1, derive := true, maxIndex := 20]
def A134442 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y : ℤ) ↦ (x + y) / 2) 2 x + x) * 4) - 1)

end Sequence

