/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152174 sequence 
-/


namespace Sequence

@[OEIS := A152174, offset := 0, derive := true, maxIndex := 24]
def A152174 (x : ℕ) : ℤ :=
  loop2 (λ (_x y : ℤ) ↦ y + y) (λ (x y : ℤ) ↦ 2 * (x - y)) x 1 (-2)

end Sequence

