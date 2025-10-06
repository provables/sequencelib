/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A333588 sequence
-/

namespace Sequence

@[OEIS := A333588, offset := 1, maxIndex := 42, derive := true]
def A333588 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ (x _y) ↦ ((x / 2) - x) - x) (x + 1) 1

end Sequence