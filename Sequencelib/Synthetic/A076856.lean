/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076856 sequence
-/

namespace Sequence

@[OEIS := A076856, offset := 4, maxIndex := 8, derive := true]
def A076856 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| ((((((2 / loop (λ (_x y) ↦ y) (x - 2) 1) + 2) + x % 2) * 2) + 1) * x) / 2

end Sequence