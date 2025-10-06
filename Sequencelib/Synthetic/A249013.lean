/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A249013 sequence
-/

namespace Sequence

@[OEIS := A249013, offset := 1, maxIndex := 100, derive := true]
def A249013 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((x * x) / (1 + 4)) + x) / 2

end Sequence