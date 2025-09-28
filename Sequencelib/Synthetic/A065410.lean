/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A065410 sequence 
-/


namespace Sequence

@[OEIS := A065410, offset := 0, derive := true, maxIndex := 8]
def A065410 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 2 + ((x * x) * y)) x 2

end Sequence

