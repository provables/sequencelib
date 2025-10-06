/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168418 sequence
-/

namespace Sequence

@[OEIS := A168418, offset := 1, maxIndex := 100, derive := true]
def A168418 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((x + x) + x) + y) 2 (x / 2)

end Sequence