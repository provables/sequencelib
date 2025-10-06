/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A104487 sequence
-/

namespace Sequence

@[OEIS := A104487, offset := 0, maxIndex := 25, derive := true]
def A104487 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ x) (y * 2) 1 1 + x) + x) + x) x 1

end Sequence