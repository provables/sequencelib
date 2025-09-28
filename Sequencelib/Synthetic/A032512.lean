/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A032512 sequence 
-/


namespace Sequence

@[OEIS := A032512, offset := 0, derive := true, maxIndex := 68]
def A032512 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ 1 + x) ((1 - loop (λ (x _y : ℤ) ↦ x * x) 2 2) + x) x

end Sequence

