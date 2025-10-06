/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A024016 sequence
-/

namespace Sequence

@[OEIS := A024016, offset := 0, maxIndex := 100, derive := true]
def A024016 (x : ℕ) : ℤ :=
  loop (λ (x _y) ↦ x + x) x 1 - (loop (λ (x _y) ↦ x * x) 2 x * x) * x

end Sequence