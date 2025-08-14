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

# A140323 sequence 
-/

namespace Sequence

@[OEIS := A140323, offset := 1, derive := true, maxIndex := 25]
def A140323 (n : ℕ) : ℤ :=
  let x := n - 1
  (loop (λ(x y : ℤ) ↦ (x + x)) ((x + x)) (2) - loop (λ(x y : ℤ) ↦ (0 - x)) (x) (1))

end Sequence
