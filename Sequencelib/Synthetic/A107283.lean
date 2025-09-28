/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A107283 sequence 
-/


namespace Sequence

@[OEIS := A107283, offset := 0, derive := true, maxIndex := 100]
def A107283 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 2 + ((x + y) * y)) x 2

end Sequence

