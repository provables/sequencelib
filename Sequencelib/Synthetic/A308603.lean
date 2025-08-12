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

# A308603 sequence 
-/

namespace Sequence

@[OEIS := A308603, offset := 3, derive := true, maxIndex := 48]
def A308603 (n : ℕ) : ℤ :=
  let x := n - 3
  (((2 + (2 * (2 + x))) + if (x) ≤ 0 then (2) else (1)) * (1 + 2))

end Sequence
