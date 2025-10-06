/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A180579 sequence
-/

namespace Sequence

@[OEIS := A180579, offset := 1, maxIndex := 43, derive := true]
def A180579 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x + y) * x) (λ (_x y) ↦ y) 2 2 (x + x) - (1 + x)

end Sequence