/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A132414 sequence
-/

namespace Sequence

@[OEIS := A132414, offset := 1, maxIndex := 5, derive := true]
def A132414 (n : ℕ) : ℤ :=
  let x := n - 1
  ((loop (λ (x y) ↦ loop (λ (x y) ↦ x * y) y 1 * x) x 1 % (1 + (x * x))) - 1) * (1 + x)

end Sequence