/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A034857 sequence
-/

namespace Sequence

@[OEIS := A034857, offset := 1, maxIndex := 100, derive := true]
def A034857 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) (2 + y) x + y) x 0 - 1

end Sequence