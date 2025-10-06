/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A162963 sequence
-/

namespace Sequence

@[OEIS := A162963, offset := 1, maxIndex := 29, derive := true]
def A162963 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ (2 * (y + y)) + y) (λ (x _y) ↦ x) x 2 1

end Sequence