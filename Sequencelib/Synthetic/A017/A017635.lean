/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017635 sequence
-/

namespace Sequence

@[OEIS := A017635, offset := 0, maxIndex := 15, derive := true]
def A017635 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * y) (λ (_x y) ↦ y) 3 1 (3 * loop (λ (x _y) ↦ 1 + (x + x)) 2 x)

end Sequence