/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A299030 sequence 
-/


namespace Sequence

@[OEIS := A299030, offset := 0]
def A299030 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y : ℤ) ↦ loop (λ (x _y : ℤ) ↦ x + x) x 1 - 1) x 2 * 2) + 2)

end Sequence

