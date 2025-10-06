/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A147629 sequence
-/

namespace Sequence

@[OEIS := A147629, offset := 1, maxIndex := 100, derive := true]
def A147629 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ ((x - 1) + x) + x) 2 y * x) x 1

end Sequence