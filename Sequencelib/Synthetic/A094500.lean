/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A094500 sequence
-/

namespace Sequence

@[OEIS := A094500, offset := 1, maxIndex := 73, derive := true]
def A094500 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((((((x - 1) / 2) / 2) / 3) + x) + x) / 3) + 2

end Sequence