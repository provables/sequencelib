/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A285473 sequence
-/

namespace Sequence

@[OEIS := A285473, offset := 0, maxIndex := 100, derive := true]
def A285473 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ 1 + (2 * ((2 * (x + x)) + x))) (y / x) x - x) + 1) x 1

end Sequence