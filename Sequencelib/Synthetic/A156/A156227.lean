/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156227 sequence
-/

namespace Sequence

@[OEIS := A156227, offset := 0, maxIndex := 50, derive := true]
def A156227 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x + x) 0 1 % (1 + (2 * 4))

end Sequence