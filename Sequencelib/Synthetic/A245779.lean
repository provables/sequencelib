/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A245779 sequence
-/

namespace Sequence

@[OEIS := A245779, offset := 1, maxIndex := 10, derive := true]
def A245779 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (y * y) + x) ((y / 2) / 2) x) x 1 + x

end Sequence