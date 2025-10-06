/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A051927 sequence
-/

namespace Sequence

@[OEIS := A051927, offset := 0, maxIndex := 100, derive := true]
def A051927 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ (x + y) + y) x 2 2 + loop (λ (x _y) ↦ (-x)) x 1

end Sequence