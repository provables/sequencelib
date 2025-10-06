/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003048 sequence
-/

namespace Sequence

@[OEIS := A003048, offset := 1, maxIndex := 20, derive := true]
def A003048 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (x * y) - loop (λ (x _y) ↦ (-x)) y 1) x 1

end Sequence