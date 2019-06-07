<article class="book">
    <aside>
        <ul>
            <?php
            foreach ($categories as $value) {
                ?>
            <li>
                <a href="">
                    <p> <?= $value->name(); ?></p>
                </a>
            </li>
            <?php

        }
        ?>
        </ul>
    </aside>

    <div class="container-book">
        <ul>
            <?php
            foreach ($livres as $value) {
                ?>

            <li>
                <a href="index.php?loc=un-livre&id=<?= $value->id(); ?>"><img src="<?= $value->img(); ?>">
                    <figcaption><?= $value->name(); ?></figcaption>
                </a>
            </li>
            <?php

        }
        ?>
        </ul>
    </div>
</article> 