/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A004258 sequence
-/

namespace Sequence

@[OEIS := A004258, offset := 1, maxIndex := 100, derive := true]
def A004258 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x y) ↦ loop (λ (x _y) ↦ x / 2) x y + x) x 0

end Sequence