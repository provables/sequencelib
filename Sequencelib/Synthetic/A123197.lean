/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A123197 sequence 
-/


namespace Sequence

@[OEIS := A123197, offset := 0, derive := true, maxIndex := 100]
def A123197 (x : ℕ) : ℤ :=
  loop2 (λ (x y : ℤ) ↦ (x - y) * x) (λ (_x _y : ℤ) ↦ 2) 2 (1 + (x + x)) x

end Sequence

