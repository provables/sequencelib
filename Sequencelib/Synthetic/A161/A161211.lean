/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A161211 sequence
-/

namespace Sequence

@[OEIS := A161211, offset := 1, maxIndex := 6, derive := true]
def A161211 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + ((x / loop (λ (_x y) ↦ y) (x - 2) 2) + x)

end Sequence