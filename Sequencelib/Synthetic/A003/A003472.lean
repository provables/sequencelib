/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A003472 sequence
-/

namespace Sequence

@[OEIS := A003472, offset := 4, maxIndex := 100, derive := true]
def A003472 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| loop (λ (x y) ↦ 2 * ((2 * (2 * (x / y))) + x)) x 1

end Sequence