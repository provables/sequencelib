/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/

import Mathlib
import Sequencelib.Meta
import GenSeq
open Synth

/-!

# A242895 sequence 
-/

namespace Sequence

@[OEIS := A242895, offset := 1, derive := true, maxIndex := 7]
def A242895 (n : ℕ) : ℤ :=
  let x := n - 1
  ((1 + (2 + 2)) * if (x) ≤ 0 then (1) else (x))

end Sequence
