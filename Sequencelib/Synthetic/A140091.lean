/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140091 sequence 
-/


namespace Sequence

@[OEIS := A140091, offset := 0, derive := true, maxIndex := 100]
def A140091 (x : ℕ) : ℕ :=
  Int.toNat <| (3 * loop (λ (x y : ℤ) ↦ x + y) x x)

end Sequence

