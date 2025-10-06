/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A024139 sequence
-/

namespace Sequence

@[OEIS := A024139, offset := 0, maxIndex := 16, derive := true]
def A024139 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ loop (λ (x y) ↦ (2 + y) * x) 2 x - x) x 1 - loop (λ (x _y) ↦ x * x) 2 ((x * x) * x)

end Sequence