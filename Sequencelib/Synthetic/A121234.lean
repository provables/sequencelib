/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A121234 sequence
-/

namespace Sequence

@[OEIS := A121234, offset := 1, maxIndex := 4, derive := true]
def A121234 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (1 + x) * loop (λ (_x y) ↦ y) (x / 2) x) x x

end Sequence