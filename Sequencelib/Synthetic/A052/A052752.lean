/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A052752 sequence
-/

namespace Sequence

@[OEIS := A052752, offset := 0, maxIndex := 100, derive := true]
def A052752 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((x + x) + x) * y) + x) (λ (_x y) ↦ y) (x - 1) 1 x

end Sequence