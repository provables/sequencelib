/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A061908 sequence
-/

namespace Sequence

@[OEIS := A061908, offset := 1, maxIndex := 23, derive := true]
def A061908 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ loop (λ (x _y) ↦ (x + x) + x) 2 y - x) x 1

end Sequence