/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112072 sequence
-/

namespace Sequence

@[OEIS := A112072, offset := 1, maxIndex := 55, derive := true]
def A112072 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((((y * x) + 1) - x % 4) + x) + y) 2 x

end Sequence