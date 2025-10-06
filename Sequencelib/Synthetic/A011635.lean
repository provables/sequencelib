/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A011635 sequence
-/

namespace Sequence

@[OEIS := A011635, offset := 0, maxIndex := 12, derive := true]
def A011635 (x : ℕ) : ℤ :=
  ((((((((loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 1 1 % (1 + 4)) % 3) + x) / 2) + x) + 2) % 2) +
    loop2 (λ (x y) ↦ x - y) (λ (x _y) ↦ x) x 2 1) /
  2

end Sequence