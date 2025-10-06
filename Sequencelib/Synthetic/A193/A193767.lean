/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A193767 sequence
-/

namespace Sequence

@[OEIS := A193767, offset := 1, maxIndex := 59, derive := true]
def A193767 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((x / 3) * 2) * 2) / (x + 1)) + x) + 2) + x) + x

end Sequence