/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A237275 sequence
-/

namespace Sequence

@[OEIS := A237275, offset := 0, maxIndex := 25, derive := true]
def A237275 (x : ℕ) : ℕ :=
  Int.toNat <| (loop2 (λ (_x y) ↦ 1 - y) (λ (x _y) ↦ x) x 0 2 + 2) * loop (λ (x _y) ↦ x + x) x 1

end Sequence