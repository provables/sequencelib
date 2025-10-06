/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A066258 sequence
-/

namespace Sequence

@[OEIS := A066258, offset := 0, maxIndex := 25, derive := true]
def A066258 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (y + y) 0 1 - x) x 0 *
  loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 0 1

end Sequence