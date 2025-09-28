/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A204467 sequence 
-/


namespace Sequence

@[OEIS := A204467, offset := 0, derive := true, maxIndex := 100]
def A204467 (x : ℕ) : ℕ :=
  Int.toNat <| ((1 + loop (λ (x y : ℤ) ↦ x + y) ((x + x) + x) x) + x / 2)

end Sequence

