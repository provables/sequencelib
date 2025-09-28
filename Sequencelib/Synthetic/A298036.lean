/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A298036 sequence 
-/


namespace Sequence

@[OEIS := A298036, offset := 0, derive := true, maxIndex := 100]
def A298036 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (_x y : ℤ) ↦ 3 * (2 * y)) x 1 * ((x % 2) + 1))

end Sequence

