/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A162397 sequence
-/

namespace Sequence

@[OEIS := A162397, offset := 1, maxIndex := 66, derive := true]
def A162397 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ (x y) ↦ (-(x + y))) (λ (x _y) ↦ x) x (1 + x) 0

end Sequence