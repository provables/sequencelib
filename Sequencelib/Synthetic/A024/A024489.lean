/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A024489 sequence
-/

namespace Sequence

@[OEIS := A024489, offset := 1, maxIndex := 100, derive := true]
def A024489 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ (x * y) + x) ((x + x) + x) 1 / loop (λ (x y) ↦ ((y * y) * y) * x) x 1) / (1 + x)) / (1 + x)

end Sequence