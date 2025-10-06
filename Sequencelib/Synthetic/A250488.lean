/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A250488 sequence
-/

namespace Sequence

@[OEIS := A250488, offset := 0, maxIndex := 2, derive := true]
def A250488 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (loop (λ (x _y) ↦ (x + x) + x) (x + x) 1) 0 1

end Sequence