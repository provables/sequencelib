/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A289443 sequence
-/

namespace Sequence

@[OEIS := A289443, offset := 0, maxIndex := 100, derive := true]
def A289443 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (_x _y) ↦ 0) (x / 2) 1 + x) * loop (λ (_x y) ↦ 3 * y) x 2

end Sequence