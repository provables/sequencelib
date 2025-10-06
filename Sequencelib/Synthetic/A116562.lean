/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A116562 sequence
-/

namespace Sequence

@[OEIS := A116562, offset := 0, maxIndex := 24, derive := true]
def A116562 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 x

end Sequence