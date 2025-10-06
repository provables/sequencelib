/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A329670 sequence
-/

namespace Sequence

@[OEIS := A329670, offset := 0, maxIndex := 96, derive := true]
def A329670 (x : ℕ) : ℕ :=
  Int.toNat <| (2 / loop (λ (_x y) ↦ y) (x - 1) 2) % 2

end Sequence