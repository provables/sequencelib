/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133665 sequence
-/

namespace Sequence

@[OEIS := A133665, offset := 0, maxIndex := 100, derive := true]
def A133665 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ 3 * (2 - y)) (λ (x y) ↦ ((y + x) + x) + x) x 1 1

end Sequence