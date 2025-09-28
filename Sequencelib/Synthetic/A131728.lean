/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131728 sequence 
-/


namespace Sequence

@[OEIS := A131728, offset := 0, derive := true, maxIndex := 85]
def A131728 (x : ℕ) : ℕ :=
  Int.toNat <| ((((x - loop2 (λ (_x y : ℤ) ↦ -y) (λ (x _y : ℤ) ↦ x) x 1 x) / 2) + 1) / 2)

end Sequence

