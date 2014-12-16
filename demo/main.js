// This file is just a sanity check to see if this demo works in plain JS

function Game () {
    this.game = new Phaser.Game(800, 600, Phaser.AUTO, "", { preload: preload, create: create });
    
    function preload () {
        this.game.load.image("logo", "phaser.png");
    }
    
    function create () {
        this.logo = this.game.add.sprite(100, 100, "logo");
    }
}

phaserGame = new Game();