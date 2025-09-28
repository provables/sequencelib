/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A228941 sequence 
-/


namespace Sequence

@[OEIS := A228941, offset := 1, derive := true, maxIndex := 28]
def A228941 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ x * x) 1 ((2 + x) / 3) + 1) + x)

end Sequence

