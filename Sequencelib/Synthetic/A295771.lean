/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A295771 sequence 
-/


namespace Sequence

@[OEIS := A295771, offset := 0, derive := true, maxIndex := 14]
def A295771 (x : ℕ) : ℕ :=
  Int.toNat <| ((((loop (λ (x y : ℤ) ↦ x * y) x 1 % (2 + x)) % 2) + x) + x)

end Sequence

