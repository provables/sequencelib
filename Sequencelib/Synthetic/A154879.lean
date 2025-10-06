/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A154879 sequence
-/

namespace Sequence

@[OEIS := A154879, offset := 0, maxIndex := 34, derive := true]
def A154879 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ y - x) (λ (_x y) ↦ y + y) x 3 1

end Sequence