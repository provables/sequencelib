/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A186723 sequence 
-/


namespace Sequence

@[OEIS := A186723, offset := 0, derive := true, maxIndex := 85]
def A186723 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (x * x) % (2 + (2 * 4))) (x / 2) x

end Sequence

