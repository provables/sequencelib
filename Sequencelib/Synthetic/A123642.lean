/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A123642 sequence
-/

namespace Sequence

@[OEIS := A123642, offset := 0, maxIndex := 100, derive := true]
def A123642 (x : ℕ) : ℤ :=
  loop (λ (x y) ↦ x * y) x 1 - loop (λ (x _y) ↦ x + x) x 1

end Sequence