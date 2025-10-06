/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A085606 sequence
-/

namespace Sequence

@[OEIS := A085606, offset := 0, maxIndex := 19, derive := true]
def A085606 (x : ℕ) : ℤ :=
  loop2 (λ (x y) ↦ (x * y) - x) (λ (_x y) ↦ y) x 1 x - 1

end Sequence