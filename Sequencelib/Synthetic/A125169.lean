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

# A125169 sequence 
-/

namespace Sequence

@[OEIS := A125169, offset := 0, derive := true, maxIndex := 10]
def A125169 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ (1 + (x + x))) ((2 + 2)) (x)


end Sequence
