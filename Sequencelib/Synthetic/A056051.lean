/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A056051 sequence
-/

namespace Sequence

@[OEIS := A056051, offset := 2, maxIndex := 100, derive := true]
def A056051 (n : ℕ) : ℤ :=
  let x := n - 2
  (loop (λ (x y) ↦ x * y) x 1 % (2 + x)) - 1

end Sequence