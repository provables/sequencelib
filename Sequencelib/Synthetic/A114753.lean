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

# A114753 sequence 
-/

namespace Sequence

@[OEIS := A114753, offset := 1, derive := true, maxIndex := 69]
def A114753 (n : ℕ) : ℤ :=
  let x := n - 1
  loop2 (λ(x y : ℤ) ↦ (2 + y)) (λ(x y : ℤ) ↦ x) (x) (1) (x)

end Sequence
