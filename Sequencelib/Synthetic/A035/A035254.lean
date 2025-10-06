/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A035254 sequence
-/

namespace Sequence

@[OEIS := A035254, offset := 0, maxIndex := 56, derive := true]
def A035254 (x : ℕ) : ℤ :=
  (loop (λ (x y) ↦ (y / loop (λ (x y) ↦ x + y) x 1) + x) x 0 + x) - 3

end Sequence