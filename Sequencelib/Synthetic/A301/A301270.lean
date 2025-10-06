/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A301270 sequence
-/

namespace Sequence

@[OEIS := A301270, offset := 4, maxIndex := 24, derive := true]
def A301270 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| loop2 (λ (x y) ↦ (2 + (2 + y)) * x) (λ (_x y) ↦ y) x 2 x * 2

end Sequence