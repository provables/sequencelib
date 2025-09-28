/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A264120 sequence 
-/


namespace Sequence

@[OEIS := A264120, offset := 1, derive := true, maxIndex := 63]
def A264120 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 2 + x) (x - 1) (x % 2)

end Sequence

