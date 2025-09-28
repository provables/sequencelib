/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A023969 sequence 
-/


namespace Sequence

@[OEIS := A023969, offset := 0, derive := true, maxIndex := 100]
def A023969 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y : ℤ) ↦ (x + y) / (1 + x)) (2 * (x + x)) 0 % 2)

end Sequence

