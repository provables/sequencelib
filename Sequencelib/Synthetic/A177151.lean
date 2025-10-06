/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A177151 sequence
-/

namespace Sequence

@[OEIS := A177151, offset := 1, maxIndex := 74, derive := true]
def A177151 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((((((((((x / 2) + x) / 2) + x) / 2) / 2) + x) / 2) + x) / 2) + 1) / 2) / 2) + x) / 2) + 1

end Sequence