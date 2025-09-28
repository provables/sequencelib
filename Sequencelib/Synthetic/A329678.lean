/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329678 sequence 
-/


namespace Sequence

@[OEIS := A329678, offset := 0, derive := true, maxIndex := 97]
def A329678 (x : ℕ) : ℕ :=
  Int.toNat <| (1 / loop (λ (_x y : ℤ) ↦ y) (x - 2) 1)

end Sequence

