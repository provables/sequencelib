/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A097043 sequence
-/

namespace Sequence

@[OEIS := A097043, offset := 1, maxIndex := 73, derive := true]
def A097043 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x y) ↦ ((1 + y) / (x * x)) + x) x 1 * x) + 1) % (x + 1)) + 1

end Sequence