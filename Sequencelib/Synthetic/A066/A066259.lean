/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066259 sequence
-/

namespace Sequence

@[OEIS := A066259, offset := 1, maxIndex := 25, derive := true]
def A066259 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (y + y) 1 1 - x) x 1 *
  loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 1

end Sequence