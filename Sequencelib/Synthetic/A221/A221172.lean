/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A221172 sequence
-/

namespace Sequence

@[OEIS := A221172, offset := 0, maxIndex := 100, derive := true]
def A221172 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ 2 + (2 + y)) (λ (x y) ↦ (x + y) + y) x 0 1 - 2

end Sequence