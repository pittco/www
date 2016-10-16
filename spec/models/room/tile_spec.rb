require 'rails_helper'

RSpec.describe Room::Tile do


  it 'xxx' do
    row = Room::Row.new

    3.times do
      tile = Room::Tile.new length: 8, width: 2
      row.add_tile(tile.clone)
    end

    expect(row.length).to eql (3 * 8)
  end

  it 'xxx' do
    row = Room::Row.new

    3.times do
      tile = Room::Tile.new length: 8, width: 2
      row.add_tile(tile.clone)
    end

    expect(row.width).to eql 2
  end

  it 'returns false when not full' do
    row = Room::Row.new(max_length: 24)
    2.times do
      tile = Room::Tile.new length: 8, width: 2
      row.add_tile(tile.clone)
    end

    expect(row.full?).to be_falsey
  end

  it 'returns true when full' do
    row = Room::Row.new(max_length: 16)
    2.times do
      tile = Room::Tile.new length: 8, width: 2
      row.add_tile(tile.clone)
    end

    expect(row.full?).to be_truthy
  end

  describe "#enough_room?" do
    let(:row) { Room::Row.new(max_length: 16) }

    it 'returns true if row has enough room' do
      tile = Room::Tile.new length: 8, width: 2
      expect(row.enough_room?(tile)).to be_truthy
    end

    it 'returns false is row is full' do
      2.times do
        tile = Room::Tile.new length: 8, width: 2
        row.add_tile(tile.clone)
      end

      tile = Room::Tile.new length: 8, width: 2
      expect(row.enough_room?(tile)).to be_falsey
    end
  end

end
