/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152661 sequence
-/

namespace Sequence

@[OEIS := A152661, offset := 2, maxIndex := 22, derive := true]
def A152661 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ x * y) x ((1 + ((2 + x) * x)) / 2)

end Sequence