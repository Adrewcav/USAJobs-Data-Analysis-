## Text Mining in Practice with R (Kwartler, 2017). 
## Upload "Combined" sheet and rename to Combined_Clean_Only.
library(readxl)
Combined_Clean_Only <- read_excel("Desktop/USAJobs Project/Combined_Clean Only.xlsx")
View(Combined_Clean_Only)    

## Using grep to perform a keyword analysis on the "PD" column.
## I first searched for the keyword "python".
## Double checked with command+F function.
## Returned rows were one off by one, i.e. (results) row 13 -> (reality) row 14.

grep('python', Combined_Clean_Only$PD,ignore.case=T)
##  Results below with rows where the term appears at least once. 
## [1]   2   3  13  14  39  40  59  60 167 413 565 589 607 752 753 755

grep(', R,', Combined_Clean_Only$PD,ignore.case=F)
## Results Below. Same occurrence with rows being off by one.
## [1]   2   3  39  40 607 753

grep('SQL', Combined_Clean_Only$PD,ignore.case=T)
## Results Below. Same occurrence with rows being off by one. 
## [1]   1   2   3  13  14  16  20  21  24  33  39  40  42  43  48  56  57  64  67
## [20] 167 169 413 427 516 605 654 655

grep('tableau', Combined_Clean_Only$PD,ignore.case=T)
## Results Below. Same occurrence with rows being off by one.
## [1]   1   2   3  13  14 167

grep('Data Aggregation', Combined_Clean_Only$PD,ignore.case=T)
## Results Below. Same occurrence with rows being off by one.
## [1]   1   5 172 355

grep('Data Visualization', Combined_Clean_Only$PD,ignore.case=T)
## Results Below. Same occurrence with rows being off by one.
##[1]   1   2   3  13  14  47 208 277 526 752 753

grep('Programming', Combined_Clean_Only$PD,ignore.case=T)
## Results Below. Same occurrence with rows being off by one.
## [1]   1   2   3   5  20  33  39  40  42  43  44  49  59  60  63 103 115 122 123
## [20] 132 137 145 156 170 180 193 249 257 285 286 290 291 298 318 329 482 557 565
## [39] 579 580 585 586 587 589 605 607 654 655 669 674 708 709 737 749 752 753 755

# Now Moving on to Minimum Degree Level
grep('Bachelor', Combined_Clean_Only$PD,ignore.case=T)
## Results Below. Same occurrence with rows being off by one.
## [1]   2   3  17  24  33  45  50  51  66  71  81  83  93 141 142 149 150 153 175
## [20] 196 223 229 283 307 354 357 381 392 423 425 426 428 430 431 432 437 472 496
## [39] 497 503 505 536 538 542 545 546 548 556 559 564 565 566 567 568 569 570 571
## [58] 572 573 574 575 576 577 580 584 586 590 594 596 597 598 601 602 603 604 605
## [77] 607 608 610 612 613 619 621 629 630 636 637 638 639 640 641 642 643 644 645
## [96] 646 647 648 649 650 654 655 656 657 658 659 663 666 667 668 670 672 674 675
## [115] 676 677 683 684 686 689 690 692 693 696 700 704 705 708 709 711 712 716 717
## [134] 719 720 721 725 726 736 738 740 741 746 748 749 750 751 752 753 756

grep('Master', Combined_Clean_Only$PD,ignore.case=T)
# Results Below. Same occurrence with rows being off by one.
## [1]   4   8  10  17  21  31  35  36  38  47  55  65  66  67  74  76  77  81  82
## [20]  84  90  93  96  97  98  99 100 115 116 118 123 125 126 127 128 133 134 137
## [39] 141 143 144 147 149 150 153 169 175 176 177 180 184 191 193 197 201 202 205
## [58] 221 223 229 230 239 244 245 252 253 269 278 279 280 283 296 314 319 328 329
## [77] 331 339 348 350 355 357 366 374 375 392 397 404 409 410 413 414 415 425 447
## [96] 448 449 462 463 464 466 470 474 476 484 497 498 499 501 507 508 515 516 521
## [115] 523 531 536 537 542 550 564 566 567 569 570 579 584 585 586 587 590 596 607
## [134] 615 622 636 637 638 639 640 641 642 643 644 645 648 649 656 659 665 666 667
## [153] 668 675 686 696 699 708 709 712 720 721 725 726 731 752 756

grep('Ph.d', Combined_Clean_Only$PD,ignore.case=T)
# Results Below. Same occurrence with rows being off by one.
## [1]   4   8  21  22  36  38  48  49  55  72  74  76  80  82  84  90  92  95  96
## [20]  97 100 104 105 110 111 112 113 116 117 119 121 124 125 126 129 135 137 141
## [39] 143 144 146 154 169 173 177 184 195 197 202 212 213 214 223 224 225 230 255
## [58] 262 265 268 269 275 283 284 288 294 315 319 320 324 325 332 338 339 341 342
## [77] 345 348 355 362 366 372 373 375 384 388 389 392 395 401 405 408 409 410 411
## [96] 413 425 430 447 448 452 470 471 476 484 492 507 508 521 523 525 530 534 536
## [115] 542 556 564 566 567 578 584 585 586 610 618 620 650 651 653 658 659 662 665
## [134] 667 679 687 706 707 717 720 721 725 726 751 757 759

grep('Phd', Combined_Clean_Only$PD,ignore.case=T)
# Results Below. Same occurrence with rows being off by one.
## [1]  31 261 569 570 654 655 699



