/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A087281 sequence
-/

namespace Sequence

@[OEIS := A087281, offset := 0, maxIndex := 17, derive := true]
def A087281 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x + y) ((((x + x) + x) * 2) + x) 2 1

end Sequence