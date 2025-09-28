/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A110567 sequence 
-/


namespace Sequence

@[OEIS := A110567, offset := 0, derive := true, maxIndex := 100]
def A110567 (x : ℕ) : ℕ :=
  Int.toNat <| (1 + loop2 (λ (x y : ℤ) ↦ x * y) (λ (_x y : ℤ) ↦ y) x x x)

end Sequence

