/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A275615 sequence 
-/


namespace Sequence

@[OEIS := A275615, offset := 0, derive := true, maxIndex := 100]
def A275615 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x y : ℤ) ↦ (2 + (2 * 4)) - y) (x % 3) 1

end Sequence

