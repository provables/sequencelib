/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A024488 sequence
-/

namespace Sequence

@[OEIS := A024488, offset := 1, maxIndex := 16, derive := true]
def A024488 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x y) ↦ (x * y) + x) ((x + x) + x) 1 / loop (λ (x y) ↦ x * y) x 1) / loop (λ (x y) ↦ x * y) x 1) /
      loop (λ (x y) ↦ (1 + y) * x) x 1) /
    (1 + x)) *
  3

end Sequence