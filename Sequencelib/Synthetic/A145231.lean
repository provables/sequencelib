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

# A145231 sequence 
-/

namespace Sequence

@[OEIS := A145231, offset := 0]
def A145231 (n : ℕ) : ℤ :=
  let x := n - 0
  loop2 (λ(x y : ℤ) ↦ (x + y)) (λ(x y : ℤ) ↦ x) (loop (λ(x y : ℤ) ↦ (x + x)) ((x + x)) (1)) (0) (1)

end Sequence
