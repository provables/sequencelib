/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A249916 sequence
-/

namespace Sequence

@[OEIS := A249916, offset := 0, maxIndex := 63, derive := true]
def A249916 (x : ℕ) : ℕ :=
  Int.toNat <| (((((x / 3) % 2) - x % 2) + x) * 2) + 1

end Sequence