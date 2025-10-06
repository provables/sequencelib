/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112469 sequence
-/

namespace Sequence

@[OEIS := A112469, offset := 0, maxIndex := 100, derive := true]
def A112469 (x : ℕ) : ℤ :=
  2 - loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) x 1 2

end Sequence