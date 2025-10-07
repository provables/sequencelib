/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A272669 sequence
-/

namespace Sequence

@[OEIS := A272669, offset := 0, maxIndex := 13, derive := true]
def A272669 (x : ℕ) : ℕ :=
  Int.toNat <| comprN (λ (x) ↦ (((x * x) % (1 + (2 * (2 + 4)))) % 4) - 1) x

end Sequence