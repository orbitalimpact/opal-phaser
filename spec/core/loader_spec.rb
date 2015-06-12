require 'spec_helper'

describe Phaser::Loader do
  let!(:game) { Phaser::Game.new }
  context "#async_image" do
    let(:load) { Phaser::Loader.new(game) }

    it "raises error without key argument" do
      expect { load.async_image }.to raise_error(ArgumentError, /key/)
    end

    it "raises error without url argument" do
      expect { load.async_image }.to raise_error(ArgumentError, /key/)
    end

    async "it loads image" do
      load.async_image({ key: "test", url: "common/images/logo.png"}) do
        run_async { expect(game.cache.check_image("test")).to be_truthy }
      end

    end
  end
end
