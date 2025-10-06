/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A103368 sequence
-/

namespace Sequence

@[OEIS := A103368, offset := 0, maxIndex := 83, derive := true]
def A103368 (x : ℕ) : ℤ :=
  loop2 (λ (_x y) ↦ y) (λ (x y) ↦ y - x) x 1 (x % 2)

end Sequence