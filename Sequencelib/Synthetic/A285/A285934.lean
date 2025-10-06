/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A285934 sequence
-/

namespace Sequence

@[OEIS := A285934, offset := 0, maxIndex := 10, derive := true]
def A285934 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ 1 + (x * x)) y 2 + x) + x) x 0 + 1

end Sequence