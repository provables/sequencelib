/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A193840 sequence
-/

namespace Sequence

@[OEIS := A193840, offset := 2, maxIndex := 8, derive := true]
def A193840 (n : ℕ) : ℤ :=
  let x := n - 2
  (((loop (λ (x _y) ↦ loop (λ (x y) ↦ (y / 2) + x) x x) 2 x + x) / 2) + 2) + x

end Sequence