/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A107427 sequence
-/

namespace Sequence

@[OEIS := A107427, offset := 1, maxIndex := 10, derive := true]
def A107427 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((x / (1 + 4)) + x) * x) / 4

end Sequence