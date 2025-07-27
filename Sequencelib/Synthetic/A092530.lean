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

# A092530 sequence 
-/

namespace Sequence

@[OEIS := A092530, offset := 0, derive := true, maxIndex := 10]
def A092530 (n : ℕ) : ℤ :=
  let x := n - 0
  (((x - (x / 2)) * x) + x)


end Sequence
