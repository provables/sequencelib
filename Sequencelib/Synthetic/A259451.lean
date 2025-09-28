/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A259451 sequence 
-/


namespace Sequence

@[OEIS := A259451, offset := 0, derive := true, maxIndex := 100]
def A259451 (x : ℕ) : ℕ :=
  Int.toNat <| (x * loop2 (λ (x y : ℤ) ↦ x + y) (λ (x _y : ℤ) ↦ x) x 0 x)

end Sequence

