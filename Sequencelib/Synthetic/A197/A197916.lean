/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A197916 sequence
-/

namespace Sequence

@[OEIS := A197916, offset := 0, maxIndex := 67, derive := true]
def A197916 (x : ℕ) : ℕ :=
  Int.toNat <| (((1 + 4) * ((x / 2) % 2)) - x / 2) + x

end Sequence