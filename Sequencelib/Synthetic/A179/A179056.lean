/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A179056 sequence
-/

namespace Sequence

@[OEIS := A179056, offset := 1, maxIndex := 4, derive := true]
def A179056 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (((loop (λ (x y) ↦ ((x - 1) + y) + (x + (x * 2)) / 2) x x / 2) + 2) / 2) * 2) x 1

end Sequence