/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057582 sequence 
-/


namespace Sequence

@[OEIS := A057582, offset := 0, derive := true, maxIndex := 5]
def A057582 (x : ℕ) : ℕ :=
  Int.toNat <| (((x % 2) + loop (λ (x y : ℤ) ↦ x * y) x 2) + (2 + x) * x)

end Sequence

