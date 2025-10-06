/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213167 sequence
-/

namespace Sequence

@[OEIS := A213167, offset := 2, maxIndex := 20, derive := true]
def A213167 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ x * y) x (1 + (((2 + x) * x) + x))

end Sequence