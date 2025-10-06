/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A160942 sequence
-/

namespace Sequence

@[OEIS := A160942, offset := 1, maxIndex := 58, derive := true]
def A160942 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((x % (2 + (2 * 4))) + (x / 2) / (1 + 4)) * (1 + x)

end Sequence