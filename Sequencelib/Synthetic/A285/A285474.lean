/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A285474 sequence
-/

namespace Sequence

@[OEIS := A285474, offset := 0, maxIndex := 100, derive := true]
def A285474 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * ((2 * (x + x)) + x)) + y) (λ (_x y) ↦ y) x 1 (x % 2)

end Sequence