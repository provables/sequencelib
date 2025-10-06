/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A308136 sequence
-/

namespace Sequence

@[OEIS := A308136, offset := 2, maxIndex := 100, derive := true]
def A308136 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| ((((loop (λ (x y) ↦ ((x + y) + y) + y) (2 + x) 2 - 2) * loop (λ (x _y) ↦ x + x) x 1) * 2) * 2) * 2

end Sequence