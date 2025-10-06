/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A137797 sequence
-/

namespace Sequence

@[OEIS := A137797, offset := 0, maxIndex := 78, derive := true]
def A137797 (x : ℕ) : ℤ :=
  (((((1 + x) % (1 + 4)) - 2) + 1) + x % 2) * 2

end Sequence