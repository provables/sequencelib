/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152692 sequence 
-/


namespace Sequence

@[OEIS := A152692, offset := 0, derive := true, maxIndex := 100]
def A152692 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (x y : ℤ) ↦ ((x + x) + x) + y) (λ (_x y : ℤ) ↦ y + y) x 0 x - x)

end Sequence

