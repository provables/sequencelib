import Mathlib

-- Maximum index to try deriving theorems
-- (override with the option `maxIndex := n` in the `@[OEIS]` attribute)
def DeriveMaxIndex := 10

-- Maximum index to search user proven theorems
def SearchMaxIndex := 100

def Suffixes : Std.HashMap Nat String := Std.HashMap.insertMany default #[
    (0, "zero"), (1, "one"), (2, "two"), (3, "three"), (4, "four"),
    (5, "five"), (6, "six"), (7, "seven"), (8, "eight"), (9, "nine"),
    (10, "ten"), (11, "eleven"), (12, "twelve"), (13, "thirteen"), (14, "fourteen"),
    (15, "fifteen"), (16, "sixteen"), (17, "seventeen"), (18, "eighteen"), (19, "nineteen"),
    (20, "twenty"), (21, "twenty_one"), (22, "twenty_two"), (23, "twenty_three"), (24, "twenty_four"),
    (25, "twenty_five"), (26, "twenty_six"), (27, "twenty_seven"), (28, "twenty_eight"), (29, "twenty_nine"),
    (30, "thirty"), (31, "thirty_one"), (32, "thirty_two"), (33, "thirty_three"), (34, "thirty_four"),
    (35, "thirty_five"), (36, "thirty_six"), (37, "thirty_seven"), (38, "thirty_eight"), (39, "thirty_nine"),
    (40, "forty"), (41, "forty_one"), (42, "forty_two"), (43, "forty_three"), (44, "forty_four"),
    (45, "forty_five"), (46, "forty_six"), (47, "forty_seven"), (48, "forty_eight"), (49, "forty_nine"),
    (50, "fifty"), (51, "fifty_one"), (52, "fifty_two"), (53, "fifty_three"), (54, "fifty_four"),
    (55, "fifty_five"), (56, "fifty_six"), (57, "fifty_seven"), (58, "fifty_eight"), (59, "fifty_nine"),
    (60, "sixty"), (61, "sixty_one"), (62, "sixty_two"), (63, "sixty_three"), (64, "sixty_four"),
    (65, "sixty_five"), (66, "sixty_six"), (67, "sixty_seven"), (68, "sixty_eight"), (69, "sixty_nine"),
    (70, "seventy"), (71, "seventy_one"), (72, "seventy_two"), (73, "seventy_three"), (74, "seventy_four"),
    (75, "seventy_five"), (76, "seventy_six"), (77, "seventy_seven"), (78, "seventy_eight"), (79, "seventy_nine"),
    (80, "eighty"), (81, "eighty_one"), (82, "eighty_two"), (83, "eighty_three"), (84, "eighty_four"),
    (85, "eighty_five"), (86, "eighty_six"), (87, "eighty_seven"), (88, "eighty_eight"), (89, "eighty_nine"),
    (90, "ninety"), (91, "ninety_one"), (92, "ninety_two"), (93, "ninety_three"), (94, "ninety_four"),
    (95, "ninety_five"), (96, "ninety_six"), (97, "ninety_seven"), (98, "ninety_eight"), (99, "ninety_nine"),
    (100, "one_hundred")
]
