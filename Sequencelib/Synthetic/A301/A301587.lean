/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A301587 sequence
-/

namespace Sequence

@[OEIS := A301587, offset := 1, maxIndex := 10, derive := true]
def A301587 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ ((x / 2) % 3) + y) (x / 2) x * 2) x 1

end Sequence