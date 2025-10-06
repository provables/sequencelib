/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080029 sequence
-/

namespace Sequence

@[OEIS := A080029, offset := 0, maxIndex := 100, derive := true]
def A080029 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ (((x * x) % 3) - x) + 1) (x % 3) x + x) / 2) + x

end Sequence