/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A247157 sequence
-/

namespace Sequence

@[OEIS := A247157, offset := 1, maxIndex := 12, derive := true]
def A247157 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((1 + (((x % 3) % 2) + x)) / 3) + 1) * (1 + x)) / 2) + x) + x) / 2) + 2) + x) / 2) + x) + x

end Sequence