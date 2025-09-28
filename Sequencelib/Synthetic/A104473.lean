/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A104473 sequence 
-/


namespace Sequence

@[OEIS := A104473, offset := 0, derive := true, maxIndex := 100]
def A104473 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y : ℤ) ↦ (2 + x) * x) 1 (loop (λ (x y : ℤ) ↦ x + y) (2 + x) x)

end Sequence

