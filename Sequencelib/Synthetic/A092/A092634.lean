/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092634 sequence
-/

namespace Sequence

@[OEIS := A092634, offset := 2, maxIndex := 100, derive := true]
def A092634 (n : ℕ) : ℤ :=
  let x := n - 2
  loop (λ (x y) ↦ ((x * y) - y) + x) (2 + x) 0 + 2

end Sequence