/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A125816 sequence
-/

namespace Sequence

@[OEIS := A125816, offset := 1, maxIndex := 100, derive := true]
def A125816 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ ((2 * ((x + x) + x)) + y) * 2) x 1 1

end Sequence