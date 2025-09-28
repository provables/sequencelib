/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A115903 sequence 
-/


namespace Sequence

@[OEIS := A115903, offset := 0, derive := true, maxIndex := 20]
def A115903 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y : ℤ) ↦ 2 * (3 * (((x / y) + x) + x))) x 1

end Sequence

