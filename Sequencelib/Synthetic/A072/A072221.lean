/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A072221 sequence
-/

namespace Sequence

@[OEIS := A072221, offset := 0, maxIndex := 50, derive := true]
def A072221 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y - 1) (λ (x y) ↦ (x + y) + y) (x + x) 1 2

end Sequence