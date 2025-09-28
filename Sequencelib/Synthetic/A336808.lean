/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A336808 sequence 
-/


namespace Sequence

@[OEIS := A336808, offset := 0, derive := true, maxIndex := 16]
def A336808 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 1 + ((1 + 4) * ((x * y) * y))) x 1

end Sequence

