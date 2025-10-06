/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133448 sequence
-/

namespace Sequence

@[OEIS := A133448, offset := 0, maxIndex := 100, derive := true]
def A133448 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop
        (λ (x _y) ↦
          ((((((((((((loop (λ (x _y) ↦ x * x) 2 2 % (1 + x)) / 3) + x) + x) / 3) + 1) * 2) + 1) / 2) + x) + x) + 1) % 2)
        (x % 3) 1 +
      x) %
    2) +
  loop (λ (x _y) ↦ 1 + ((x + x) + x)) x 1

end Sequence