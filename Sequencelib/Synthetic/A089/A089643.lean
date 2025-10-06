/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A089643 sequence
-/

namespace Sequence

@[OEIS := A089643, offset := 0, maxIndex := 50, derive := true]
def A089643 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ ((loop2 (λ (x y) ↦ x + y) (λ (_x y) ↦ y / 3) x 0 x - 1) - x) - x) 2 x / 2) 1 (x + x) -
  x

end Sequence