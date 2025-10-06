/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A214863 sequence
-/

namespace Sequence

@[OEIS := A214863, offset := 1, maxIndex := 45, derive := true]
def A214863 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ ((((x / (1 + y)) + 2) + x) * 2) - 1) 2 x

end Sequence