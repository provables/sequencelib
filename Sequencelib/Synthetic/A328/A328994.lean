/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A328994 sequence
-/

namespace Sequence

@[OEIS := A328994, offset := 1, maxIndex := 33, derive := true]
def A328994 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ ((x * x) + y) * x) 1 (1 + x) * loop (λ (x y) ↦ 1 + (y + x)) x 1) / 2

end Sequence