/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A189820 sequence 
-/


namespace Sequence

@[OEIS := A189820, offset := 1, derive := true, maxIndex := 100]
def A189820 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ if (x % 2) ≤ 0 then x / 3 else 1) x (x + x)

end Sequence

