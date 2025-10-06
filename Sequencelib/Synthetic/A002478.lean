/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A002478 sequence
-/

namespace Sequence

@[OEIS := A002478, offset := 0, maxIndex := 50, derive := true]
def A002478 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (((y * y) + x) / (1 + x)) + x) (λ (x _y) ↦ x) ((x + x) - 1) 1 0

end Sequence