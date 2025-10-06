/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A083944 sequence
-/

namespace Sequence

@[OEIS := A083944, offset := 0, maxIndex := 100, derive := true]
def A083944 (x : ℕ) : ℤ :=
  1 - loop2 (λ (_x y) ↦ y) (λ (x y) ↦ ((1 + y) + x) + x) x 1 0

end Sequence