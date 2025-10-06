/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080559 sequence
-/

namespace Sequence

@[OEIS := A080559, offset := 0, maxIndex := 12, derive := true]
def A080559 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ ((loop (λ (x y) ↦ (2 + y) * x) 2 x + x) / y) - x) x 1

end Sequence