/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053717 sequence 
-/


namespace Sequence

@[OEIS := A053717, offset := 0, derive := true, maxIndex := 27]
def A053717 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ 1 + (x * y)) (λ (_x y : ℤ) ↦ y) (1 + (2 + 4)) 1 x

end Sequence

