/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A291268 sequence
-/

namespace Sequence

@[OEIS := A291268, offset := 2, maxIndex := 70, derive := true]
def A291268 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| (1 - (((x % 3) * x) % 2)) + x / 2

end Sequence