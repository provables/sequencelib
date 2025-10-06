/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089104 sequence
-/

namespace Sequence

@[OEIS := A089104, offset := 2, maxIndex := 11, derive := true]
def A089104 (n : ℕ) : ℤ :=
  let x := n - 2
  loop2 (λ (x y) ↦ (2 + y) * x) (λ (_x y) ↦ y) x 2 x / (2 + x)

end Sequence