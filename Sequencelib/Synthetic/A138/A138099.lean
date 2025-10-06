/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138099 sequence
-/

namespace Sequence

@[OEIS := A138099, offset := 1, maxIndex := 77, derive := true]
def A138099 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (_x y) ↦ y) (x - y) x + x) / 2) x x + 1

end Sequence