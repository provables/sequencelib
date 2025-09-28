/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A095151 sequence 
-/


namespace Sequence

@[OEIS := A095151, offset := 0, derive := true, maxIndex := 100]
def A095151 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (x + x) + y) x 1 - 1)

end Sequence

