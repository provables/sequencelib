/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078039 sequence
-/

namespace Sequence

@[OEIS := A078039, offset := 0, maxIndex := 50, derive := true]
def A078039 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (((y * y) + x) / (1 + x)) + x) (λ (x _y) ↦ x) (x + x) 1 0 * loop (λ (x _y) ↦ (-x)) x 1

end Sequence