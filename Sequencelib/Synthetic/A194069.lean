/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A194069 sequence
-/

namespace Sequence

@[OEIS := A194069, offset := 1, maxIndex := 46, derive := true]
def A194069 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (2 * loop (λ (x y) ↦ (x - (x / y)) + y) x x) + 1

end Sequence