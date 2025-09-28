/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A069566 sequence 
-/


namespace Sequence

@[OEIS := A069566, offset := 1, derive := true, maxIndex := 6]
def A069566 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y : ℤ) ↦ if (x - 2) ≤ 0 then ((x * x) + x) * x else 1) x x

end Sequence

