/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A034001 sequence
-/

namespace Sequence

@[OEIS := A034001, offset := 1, maxIndex := 99, derive := true]
def A034001 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 3 * ((x * y) + x)) x 1

end Sequence