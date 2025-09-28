/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052649 sequence 
-/


namespace Sequence

@[OEIS := A052649, offset := 0, derive := true, maxIndex := 22]
def A052649 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ x * y) x (1 + ((x + x) + if x ≤ 0 then 1 else 2))

end Sequence

