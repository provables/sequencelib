/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017168 sequence 
-/


namespace Sequence

@[OEIS := A017168, offset := 0, derive := true, maxIndex := 14]
def A017168 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y : ℤ) ↦ (x * x) * y) (λ (_x _y : ℤ) ↦ 1) 4 3 x

end Sequence

